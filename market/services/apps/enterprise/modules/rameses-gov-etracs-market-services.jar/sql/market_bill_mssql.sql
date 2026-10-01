[updateBalanceForward]
UPDATE mb
SET mb.balanceforward = ISNULL((
	SELECT SUM(amount - amtpaid) 
	FROM market_abstract_billitem 
	WHERE billid = $P{billid} AND forwarded = 1
), 0)
FROM market_bill mb
WHERE mb.objid = $P{billid}

[updateBillTotals]
UPDATE mb 
SET mb.amount = ISNULL((
	SELECT SUM(abi.amount) 
	FROM market_abstract_billitem abi
	INNER JOIN market_billitem mbi ON abi.objid=mbi.objid
	LEFT JOIN market_abstract_billitem superseder ON abi.objid = superseder.supersededid
	WHERE abi.billid = $P{billid} AND abi.forwarded = 0 AND superseder.objid IS NULL
), 0),
mb.surcharge = ISNULL((
	SELECT SUM(
		CASE
			WHEN NOT(superseder.objid IS NULL) AND abi.forwarded = 1 THEN (abi.amount * -1)
			WHEN superseder.objid IS NULL AND abi.forwarded = 0 THEN abi.amount
			ELSE 0
		END
	) 
	FROM market_abstract_billitem abi
	INNER JOIN market_billitem_subitem mpi ON abi.objid=mpi.objid
	LEFT JOIN market_abstract_billitem superseder ON abi.objid = superseder.supersededid    
	WHERE abi.billid = $P{billid} 
	AND mpi.type = 'SURCHARGE' 
), 0),
mb.interest = ISNULL((
	SELECT SUM(
		CASE
			WHEN NOT(superseder.objid IS NULL) AND abi.forwarded = 1 THEN (abi.amount * -1)
			WHEN superseder.objid IS NULL AND abi.forwarded = 0 THEN abi.amount
			ELSE 0
		END
	) 
	FROM market_abstract_billitem abi
	INNER JOIN market_billitem_subitem mpi ON abi.objid=mpi.objid   
	LEFT JOIN market_abstract_billitem superseder ON abi.objid = superseder.supersededid    
	WHERE abi.billid = $P{billid} 
	AND mpi.type = 'INTEREST' 
), 0) 
FROM market_bill mb 
WHERE mb.objid = $P{billid}

[updateBillPayment]
UPDATE mb
SET mb.totalpayment = ISNULL(
	(
		SELECT SUM(xx.amt)	
		FROM 
		(SELECT SUM(mb1.amount) AS amt 
		FROM market_paymentitem mb1 
		INNER JOIN market_payment mp1 ON mb1.parentid = mp1.objid 
		WHERE mp1.voided = 0 AND mb1.billid = $P{billid}
		UNION ALL
		SELECT SUM(abi.amtpaid) AS amt
		FROM market_credit_billitem mcb 
		INNER JOIN market_abstract_billitem abi ON mcb.objid = abi.objid 
		WHERE abi.billid = $P{billid}) xx
	)
,0) 
FROM market_bill mb
WHERE mb.objid = $P{billid}

[getBillItems]
SELECT u.*
FROM

(SELECT 
   y.objid,
   y.year,
   y.month,
   y.billdate,
   y.duedate,
   y.particulars,
   y.amount,
   y.surcharge,
   y.interest,
   (y.amtpaid + y.surchargepaid + y.interestpaid) AS amtpaid,
   (y.amount+y.surcharge+y.interest) - (y.amtpaid + y.surchargepaid + y.interestpaid) AS balance,
   y.forwarded,
   0 AS sindex
   
FROM (SELECT z.*, 
	ISNULL(
		( 
		SELECT SUM(amount)  
		FROM market_billitem_subitem _mpi
		INNER JOIN market_abstract_billitem _mbi ON _mpi.objid = _mbi.objid 
		WHERE _mpi.billitemrefid = z.objid  
		AND _mpi.type = 'SURCHARGE'
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.objid )
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.billitemrefid )
		)
	, 0) AS surcharge,
	ISNULL(
		( 
		SELECT SUM(amtpaid)  
		FROM market_billitem_subitem _mpi
		INNER JOIN market_abstract_billitem _mbi ON _mpi.objid = _mbi.objid 
		WHERE _mpi.billitemrefid = z.objid  
		AND _mpi.type = 'SURCHARGE'
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.objid )
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.billitemrefid )
		)
	, 0) AS surchargepaid,
	ISNULL(
		( 
		SELECT SUM(amount)  
		FROM market_billitem_subitem _mpi
		INNER JOIN market_abstract_billitem _mbi ON _mpi.objid = _mbi.objid 
		WHERE _mpi.billitemrefid = z.objid  
		AND _mpi.type = 'INTEREST'
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.objid )
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.billitemrefid )
		)
	, 0) AS interest,
	ISNULL(
		( 
		SELECT SUM(amtpaid)  
		FROM market_billitem_subitem _mpi
		INNER JOIN market_abstract_billitem _mbi ON _mpi.objid = _mbi.objid 
		WHERE _mpi.billitemrefid = z.objid  
		AND _mpi.type = 'INTEREST'
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.objid )
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = _mpi.billitemrefid )
		)
	, 0) AS interestpaid
	FROM
	(	SELECT
			mbi.objid,
			mbi.year,
			mbi.month,
			abi.billdate,
			mbi.duedate,
			mai.title AS particulars,
			abi.amount,
		    abi.amtpaid,
		    abi.forwarded
		FROM market_billitem mbi 
		INNER JOIN market_abstract_billitem abi ON abi.objid = mbi.objid 
		INNER JOIN market_itemaccount mai ON abi.itemid = mai.objid 
		WHERE abi.billid = $P{billid} 
		AND NOT EXISTS (SELECT 1 FROM market_abstract_billitem WHERE supersededid = mbi.objid )
	) z
) y

UNION ALL

SELECT 
   cbi.objid,
   bs.year,
   bs.month,
   abi.billdate,
   NULL AS duedate,
   ai.title AS particulars,
   abi.amount,
   0 AS surcharge,
   0 AS interest,
   abi.amtpaid,
   abi.amount - abi.amtpaid AS balance,
   abi.forwarded,
   -1 AS sindex
FROM market_credit_billitem cbi 
INNER JOIN market_abstract_billitem abi ON cbi.objid = abi.objid 
INNER JOIN market_itemaccount ai ON abi.itemid = ai.objid 
INNER JOIN market_bill b ON abi.billid = b.objid 
INNER JOIN market_billschedule bs ON b.billscheduleid = bs.objid 
WHERE abi.billid = $P{billid} AND NOT((abi.amount - abi.amtpaid) = 0 )
) u

ORDER BY u.sindex, u.year, u.month


[getStatement]
SELECT x.*,
	(x.amount + x.surcharge + x.interest - x.amtpaid) AS total
FROM
	(
	SELECT y.*
	FROM
		(
		SELECT 
			mcb.objid,
			'BALANCE FORWARD(ADVANCE)' AS particulars,
			mbs.fromdate AS txndate,
			0 AS amount,
			mbi.amtpaid, 
			-1 AS sindex,
			mbs.year,
			mbs.month,
			0 AS surcharge,
			0 AS interest
		FROM market_credit_billitem mcb
		INNER JOIN market_abstract_billitem mbi ON mcb.objid = mbi.objid 
		INNER JOIN market_bill mb ON mbi.billid = mb.objid  
		INNER JOIN market_billschedule mbs ON mb.billscheduleid = mbs.objid
		WHERE mb.objid = $P{billid} AND mcb.paymentid IS NULL

		UNION ALL	
		SELECT z.*,
			ISNULL(( SELECT SUM(amount)  
			FROM market_billitem_subitem _mpi
			INNER JOIN market_abstract_billitem _mbi ON _mpi.objid = _mbi.objid 
			WHERE _mpi.billitemrefid = z.objid  
			AND _mpi.type = 'SURCHARGE')

			, 0) AS surcharge,

			ISNULL(( SELECT SUM(amount)  
			FROM market_billitem_subitem _mpi
			INNER JOIN market_abstract_billitem _mbi ON _mpi.objid = _mbi.objid 
			WHERE _mpi.billitemrefid = z.objid  
			AND _mpi.type = 'INTEREST'), 0) AS interest

			FROM ( 	
				SELECT
					mbi.objid,
					CASE WHEN abi.remarks IS NULL
					   THEN mai.title
					   ELSE CONCAT( mai.title, ' (',  abi.remarks , ')' )
					END AS particulars,
				    abi.billdate,
				    abi.amount,
				    0 AS amtpaid,
				    1 AS sindex,
				    mbi.year,
				    mbi.month
				FROM market_billitem mbi 
				INNER JOIN market_abstract_billitem abi ON abi.objid = mbi.objid 
				INNER JOIN market_itemaccount mai ON abi.itemid = mai.objid 
				WHERE abi.billid = $P{billid} 
			) z	
		) y
		UNION ALL 
		SELECT 
			mp.objid,
			CONCAT( mp.reftype, ' ', mp.refno ) AS particulars,
			mp.refdate AS txndate,
			0 AS amount,
			SUM(mpi.amount) AS amtpaid, 
			3 AS sindex,
			bs.year,
			bs.month,
			0 AS surcharge,
			0 AS interest
		FROM market_paymentitem mpi
		INNER JOIN market_bill b ON mpi.billid = b.objid
		INNER JOIN market_billschedule bs ON b.billscheduleid = bs.objid 
		INNER JOIN  market_payment mp ON  mpi.parentid = mp.objid
		WHERE mpi.billid = $P{billid}
		GROUP BY mp.objid,mp.reftype,mp.refno,mp.refdate,bs.year,bs.month
    )x
ORDER BY x.txndate, x.sindex


