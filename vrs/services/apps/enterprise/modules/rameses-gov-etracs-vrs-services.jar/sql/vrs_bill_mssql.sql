[updateBalanceForward]
UPDATE mb SET 
	mb.balanceforward = ISNULL((
		SELECT SUM(
			CASE WHEN cbi.objid IS NULL THEN abi.amount ELSE (0-abi.amtpaid) END
		)
	    FROM vrs_abstract_billitem abi 
	    	LEFT JOIN vrs_credit_billitem cbi ON abi.objid = cbi.objid
	    WHERE abi.billid = $P{billid} AND abi.forwarded = 1
	), 0)
FROM vrs_bill mb  
WHERE mb.objid = $P{billid}

[updateBillTotals]
UPDATE mb SET 
	mb.amount = ISNULL((
		SELECT SUM(amount) FROM vw_vrs_billitem 
	    WHERE billid = $P{billid} AND forwarded=0 AND superseded=0
	), 0),
	mb.surcharge = ISNULL((
		SELECT SUM(
			CASE
				WHEN superseded=1 AND forwarded = 1 THEN (amtpaid - amount)
				WHEN superseded=0 AND forwarded = 0 THEN amount
				ELSE 0
			END
		) 
		FROM vw_vrs_billitem_subitem 
		WHERE billid = $P{billid} 
		AND type = 'SURCHARGE' 
	), 0),
	mb.interest = ISNULL((
		SELECT SUM(
			CASE
				WHEN superseded=1 AND forwarded = 1 THEN (amtpaid - amount )
				WHEN superseded=0 AND forwarded = 0 THEN amount
				ELSE 0
			END
		) 
		FROM vw_vrs_billitem_subitem
		WHERE billid = $P{billid} 
		AND type = 'INTEREST' 
	), 0),
	mb.discount = ISNULL((
		SELECT SUM(di.amount) 
		FROM vrs_discountitem di
			INNER JOIN vrs_abstract_billitem abi ON di.billitemrefid = abi.objid
		WHERE abi.billid = $P{billid} 
	), 0)  
FROM vrs_bill mb  
WHERE mb.objid = $P{billid}


[updateBillPayment]
UPDATE mb SET 
	mb.totalpayment = ISNULL(
		(
			SELECT SUM(xx.amt)	
			FROM 
			(SELECT SUM(mb1.amount) AS amt 
			FROM vrs_paymentitem mb1 
			INNER JOIN vrs_payment mp1 ON mb1.parentid = mp1.objid 
			WHERE mp1.voided = 0 AND mb1.billid = $P{billid}
			UNION ALL
			SELECT SUM(abi.amtpaid) AS amt
			FROM vrs_credit_billitem mcb 
			INNER JOIN vrs_abstract_billitem abi ON mcb.objid = abi.objid 
			WHERE abi.billid = $P{billid}) xx
		)
	,0),
	mb.discount = ISNULL((
		SELECT SUM(di.amount) 
		FROM vrs_discountitem di
		INNER JOIN vrs_abstract_billitem abi ON di.billitemrefid = abi.objid
		WHERE abi.billid = $P{billid} 
	), 0) 
FROM vrs_bill mb 
WHERE mb.objid = $P{billid}


[getBillItems]
SELECT z.*,
((z.amount + z.surcharge + z.interest) - (z.discount + z.amtpaid )) AS balance 
FROM
	(SELECT  
	   bi.objid,
	   bi.year,
	   bi.billdate,
	   bi.duedate,
	   bi.particulars,
	   bi.amount,
	   bi.discount,
	   bi.surcharge,
	   bi.interest,
	   (bi.amtpaid + bi.surchargepaid + bi.interestpaid) AS amtpaid,
	   forwarded,
	   0 AS sindex,
	   bi.sortorder

	FROM vw_vrs_billitem bi 
	WHERE bi.billid = $P{billid}
	
	UNION ALL
	
	SELECT 
	   cbi.objid,
	   ay.activeyear AS year,
	   abi.billdate,
	   NULL AS duedate,
	   (ai.title + 
		 (CASE WHEN mp.objid IS NULL THEN '' 
		 	ELSE (' (Ref No:'+ mp.refno +')') 
		 END)
	   ) AS particulars,
	   (abi.amount-abi.amtpaid) AS amount,
	   0 AS discount,
	   0 AS surcharge,
	   0 AS interest,
	   0 AS amtpaid,
	   abi.forwarded,
	   1 AS sindex,
	   ai.sortorder
	FROM vrs_credit_billitem cbi 
	INNER JOIN vrs_abstract_billitem abi ON cbi.objid = abi.objid 
	INNER JOIN vrs_itemaccount ai ON abi.itemid = ai.objid 
	INNER JOIN vw_vrs_bill b ON abi.billid = b.objid 
	INNER JOIN vrs_txn vt ON b.txnid = vt.objid
	INNER JOin vrs_account_year ay ON vt.acctyearid = ay.objid 
	LEFT JOIN vrs_payment mp ON cbi.paymentid = mp.objid 
	WHERE abi.billid = $P{billid} AND NOT((abi.amount - abi.amtpaid) = 0 )
) z
ORDER BY z.year, z.sindex, z.sortorder
