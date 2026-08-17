[findBill]
SELECT
	mb.objid,
	mb.batchid,
	mb.billgroupid,
	mb.prevbillid,
	mb.billno,
	mb.lasttxndate,
	mb.validitydate,
	mb.acctid,
	mb.acctinfoid,
	mb.state,
	mb.remarks,
	mb.balanceforward,
	mb.totalpayment,
	mb.interest,
	mb.surcharge,
	mb.amount,
	mb.discount,
	mb.txnmode,
	mb.uid,
	mb.scheduleid,
	mb.prevreading,
	mb.reading,
	mb.readingdate,
	mb.reader_objid,
	mb.reader_name,
	mb.volume,
	mb.rate,
	mb.dtprinted,
	

	CASE WHEN mb.billdate IS NULL THEN mbs.billdate ELSE mb.billdate END AS billdate,

	ma.acctno,
	mai.acctname,
	mai.location_text,
	mbs.groupid AS name,
	mbs.year,
	mbs.month,
	mbs.fromdate,
	mbs.todate,
	mbs.discdate,
	mbs.duedate,
	mbs.expirydate,
	mbs.readingdate,
	mbs.readingduedate,
	mbs.billingduedate,
	(mb.balanceforward + mb.interest + mb.surcharge + mb.amount) - (mb.totalpayment + mb.discount) AS balance,
	CASE WHEN mbs.expirydate < NOW() THEN 1 ELSE 0 END AS expired,
	mai.units,
	mai.meterid,
	tsk.state AS acctstate
FROM (
	select b.* from water_bill b 
	where b.objid = $P{billid}
)mb 
INNER JOIN water_billschedule mbs ON mb.scheduleid = mbs.objid 
INNER JOIN water_account ma ON mb.acctid = ma.objid 
INNER JOIN water_account_info mai ON ma.acctinfoid = mai.objid
INNER JOIN water_account_task tsk ON ma.taskid = tsk.taskid


[updateBalanceForward]
UPDATE water_bill mb
SET balanceforward = 
IFNULL((SELECT SUM(abi.amount) FROM water_abstract_billitem abi WHERE abi.billid = $P{billid} AND abi.forwarded = 1 ), 0) 
- 
IFNULL((SELECT amount FROM water_payment WHERE billid = $P{billid} AND reftype = 'bf-credit'  ),0)
WHERE mb.objid = $P{billid}


[updateBillTotals]
UPDATE water_bill mb 
SET mb.amount = IFNULL((
	SELECT SUM(amount)
    FROM vw_water_billitem 
    WHERE billid = $P{billid} AND forwarded=0 AND superseded=0
), 0),
mb.surcharge = IFNULL((
	SELECT SUM(
		CASE
			WHEN superseded=1 AND forwarded = 1 THEN (amtpaid - amount)
			WHEN superseded=0 THEN amount
			ELSE 0
		END
	) 
	FROM vw_water_billitem_subitem 
	WHERE billid = $P{billid} 
	AND type = 'SURCHARGE' 
), 0),
mb.interest = IFNULL((
	SELECT SUM(
		CASE
			WHEN superseded=1 AND forwarded = 1 THEN (amtpaid - amount )
			WHEN superseded=0 THEN amount
			ELSE 0
		END
	) 
	FROM vw_water_billitem_subitem
	WHERE billid = $P{billid} 
	AND type = 'INTEREST' 
), 0),
mb.discount = IFNULL((
	SELECT SUM(di.amount) 
	FROM water_discountitem di
	INNER JOIN water_abstract_billitem abi ON di.billitemrefid = abi.objid
	WHERE abi.billid = $P{billid} 
), 0)  
WHERE mb.objid = $P{billid}

[updateBillPayment]
UPDATE water_bill mb
SET mb.totalpayment = IFNULL(
	(
		SELECT SUM(wp.amount)	
		FROM water_payment wp 
		WHERE wp.voided = 0 AND wp.posted=1 AND NOT(wp.reftype='bf-credit') AND wp.billid = $P{billid}
	)
,0),
mb.discount = IFNULL((
	SELECT SUM(di.amount) 
	FROM water_discountitem di
	INNER JOIN water_abstract_billitem abi ON di.billitemrefid = abi.objid
	WHERE abi.billid = $P{billid} 
), 0) 
WHERE mb.objid = $P{billid}

[getBillItems]
SELECT z.*,
	((z.amount + z.surcharge + z.interest) - (z.discount + z.amtpaid )) AS balance 
FROM (
	SELECT  
		t0.objid,
		t0.year,
		t0.month,
		t0.billdate,
		t0.duedate,
		t0.particulars,
		t0.remarks,
		t0.amount,
		t0.discount,
		t0.surcharge,
		t0.interest,
		(t0.amtpaid + t0.surchargepaid + t0.interestpaid) AS amtpaid,
		forwarded,
		0 AS sindex, 
		t0.itemid, 
		t0.groupidx 
	FROM (	
		SELECT bi.*, 
			(case when ((bi.year * 12) + bi.month) < ((b.year * 12) + b.month) then 1 else 0 end) as groupidx, 
			IFNULL(( SELECT amount FROM water_discountitem WHERE billitemrefid = bi.objid ),0) AS discount,
			IFNULL(( SELECT SUM(amount) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'SURCHARGE' AND superseded=0),0) AS surcharge, 
			IFNULL(( SELECT SUM( CASE WHEN superseded=0 THEN amount ELSE amtpaid END ) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'INTEREST' ),0) AS interest,
			IFNULL(( SELECT SUM(amtpaid) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'SURCHARGE'),0) AS surchargepaid, 
			IFNULL(( SELECT SUM(amtpaid) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'INTEREST'),0) AS interestpaid
	    FROM vw_water_bill b 
	    	INNER JOIN vw_water_billitem bi ON bi.billid = b.objid 
	    WHERE b.objid = $P{billid} AND bi.superseded = 0 
	) t0 
	
	UNION ALL
	
	SELECT 
		'credit' AS objid,
		b.year,
		b.month,
		MAX(mp.refdate) AS billdate,
		NULL AS duedate,
		'CREDITS' AS particulars,
		NULL AS remarks,
		SUM( abi.amount - abi.amtpaid ) AS amount,
		0 AS discount,
		0 AS surcharge,
		0 AS interest,
		0 AS amtpaid,
		0 AS forwarded,
		1 AS sindex, 
		abi.itemid, 
		0 as groupidx
	FROM water_credit_billitem cbi 
		INNER JOIN water_abstract_billitem abi ON cbi.objid = abi.objid 
		INNER JOIN water_itemaccount ai ON abi.itemid = ai.objid 
		INNER JOIN vw_water_bill b ON abi.billid = b.objid 
		INNER JOIN water_payment mp ON cbi.paymentid = mp.objid 
	WHERE abi.billid = $P{billid} AND abi.amount <> abi.amtpaid 
	GROUP BY b.year, b.month, abi.itemid  
) z
ORDER BY z.year DESC, z.month DESC, z.sindex, z.billdate


[getUnpaidBillItems]
SELECT * 
FROM ( 
	SELECT 
		z.objid,
		z.year,
		z.month,
		z.billdate,
		z.duedate,
		z.particulars,
		(z.amount - z.discount) AS amount,
		(z.surcharge - z.surchargepaid) AS surcharge,
		(z.interest - z.interestpaid) AS interest,
		(z.amount - z.discount + z.surcharge - z.surchargepaid + z.interest - z.interestpaid ) AS balance 
	FROM (
		SELECT  
			bi.objid,
			bi.year,
			bi.month,
			bi.billdate,
			bi.duedate,
			bi.particulars,
			(bi.amount - bi.amtpaid) AS amount,
			IFNULL(di.amount,0) AS discount,
			IFNULL(( SELECT SUM( CASE WHEN superseded=0 THEN amount ELSE amtpaid END ) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'SURCHARGE' ),0) AS surcharge,
			IFNULL(( SELECT SUM( CASE WHEN superseded=0 THEN amount ELSE amtpaid END ) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'INTEREST' ),0) AS interest,
			IFNULL(( SELECT SUM(amtpaid) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'SURCHARGE'),0) AS surchargepaid, 
			IFNULL(( SELECT SUM(amtpaid) FROM vw_water_billitem_subitem WHERE billitemrefid = bi.objid AND type = 'INTEREST'),0) AS interestpaid,
			0 AS amtpaid,
			forwarded
		FROM vw_water_billitem bi 
			LEFT JOIN water_discountitem di ON (di.billitemrefid = bi.objid AND di.amount > 0)
		WHERE bi.billid = $P{billid} AND bi.superseded = 0
	) z
)t0 
WHERE t0.balance > 0 
ORDER BY t0.year DESC, t0.month DESC


[getOpenBillItems]
SELECT 
	bi.year,
	bi.month,
	abi.itemid,
	SUM(abi.amount - abi.amtpaid - IFNULL(di.amount, 0)) AS amount,
	bi.installmentid,
	MAX(abi.billdate) AS billdate
FROM water_billitem bi 
	INNER JOIN water_abstract_billitem abi ON bi.objid = abi.objid 
	LEFT JOIN water_discountitem di ON bi.objid = di.billitemrefid
WHERE abi.billid = $P{billid}
	AND (abi.amount - abi.amtpaid - IFNULL( di.amount, 0 )) > 0	
GROUP BY bi.year, bi.month, abi.itemid, bi.installmentid


[getOpenSubItems]
SELECT 
	bi.year,
	bi.month,
	bi.itemid AS parentitemid,
	sbi.itemid,
	sbi.itemid AS item_objid,   
	SUM(sbi.amount - sbi.amtpaid) AS amount,
	sbi.type 
FROM vw_water_billitem_subitem sbi 
INNER JOIN vw_water_billitem bi ON bi.objid = sbi.billitemrefid  
WHERE sbi.billid = $P{billid} 
	AND (sbi.amount - sbi.amtpaid) > 0	
	AND sbi.superseded = 0 
GROUP BY bi.year, bi.month, bi.itemid, sbi.itemid, sbi.type 


[findOpenCreditItem]
SELECT 
   SUM( abi.amtpaid - abi.amount ) AS amount
FROM water_credit_billitem cri 
	INNER JOIN water_abstract_billitem abi ON cri.objid = abi.objid 
WHERE abi.billid =  $P{billid}
	AND ( abi.amtpaid - abi.amount ) > 0
