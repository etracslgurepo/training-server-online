[getItems]
SELECT x.*, (x.amount - x.discount + x.surcharge + x.interest ) AS total
FROM (

	SELECT y.objid, 
	   zz.objid AS refbillid,
	   CONCAT( ia.title, ' ', 
	    SUBSTR('JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC',  (4*(bi.month-1)) + 1 ,3),
	   ' ', CONVERT(bi.year, CHAR(4))) AS particulars,
	   zz.billdate AS refdate,
	   y.amount, 0 AS amtpaid, y.discount, y.surcharge, y.interest,
	   ia.itemtype AS txntype
	   
	FROM
		(
		  SELECT z.objid, SUM(z.amount) AS amount, SUM(z.discount) AS discount, 
		  SUM(z.surcharge) AS surcharge, SUM(z.interest) AS interest 
		  FROM 
			(
				SELECT
					bi.objid, 
					abi.amount,
					0 AS discount,
					0 AS surcharge,
					0 AS interest
				FROM water_billitem bi 
				INNER JOIN water_abstract_billitem abi ON bi.objid = abi.objid
				INNER JOIN water_bill wb ON abi.billid = wb.objid 
				INNER JOIN water_billschedule wbs ON wb.scheduleid = wbs.objid 
				WHERE wb.acctid = $P{acctid} 
				AND wbs.year = $P{year}
		    UNION ALL 
				SELECT 
					di.billitemrefid AS objid,
					0 AS amount, 
					di.amount AS discount,
					0 AS surcharge,
					0 AS interest
				FROM water_discountitem di 
				INNER JOIN water_abstract_billitem abi ON di.objid = abi.objid 
				INNER JOIN water_abstract_billitem mbi ON di.billitemrefid = mbi.objid 
				INNER JOIN water_bill wb ON mbi.billid = wb.objid 
				INNER JOIN water_billschedule wbs ON wb.scheduleid = wbs.objid 
				WHERE wb.acctid = $P{acctid} 
				AND wbs.year = $P{year}
		    UNION ALL
				SELECT 
					sbi.billitemrefid AS objid,
					0 AS amount, 
					0 AS discount,
					(CASE WHEN sbi.type = 'SURCHARGE' THEN abi.amount ELSE 0 END) AS surcharge,
					(CASE WHEN sbi.type = 'INTEREST' THEN abi.amount ELSE 0 END) AS interest
				FROM water_billitem_subitem sbi 
				INNER JOIN water_abstract_billitem abi ON sbi.objid = abi.objid
				INNER JOIN water_abstract_billitem mbi ON sbi.billitemrefid = mbi.objid 
				INNER JOIN water_bill wb ON mbi.billid = wb.objid
				INNER JOIN water_billschedule wbs ON wb.scheduleid = wbs.objid 
				WHERE wb.acctid = $P{acctid} 
				AND wbs.year = $P{year}
				AND abi.objid NOT IN ( SELECT supersededid FROM water_abstract_billitem 
				   WHERE NOT(supersededid IS NULL) )		
		) z
		GROUP BY z.objid  	
	) y	
	INNER JOIN water_billitem bi ON y.objid = bi.objid 
	INNER JOIN water_abstract_billitem yabi ON bi.objid = yabi.objid
	INNER JOIN water_bill wb ON yabi.billid = wb.objid  
	INNER JOIN water_itemaccount ia ON yabi.itemid = ia.objid 
	LEFT JOIN (
		SELECT rb.objid, rb.acctid, rbs.year, rbs.month, rbs.billdate 
		FROM water_bill rb 
		INNER JOIN water_billschedule rbs ON rb.scheduleid = rbs.objid  
	) zz ON zz.acctid = wb.acctid AND zz.year = bi.year AND zz.month = bi.month 

	WHERE (
		(yabi.forwarded = 1 AND yabi.billid = $P{firstbillid} )
		OR (yabi.forwarded = 1 AND yabi.auto=0) 
		OR yabi.forwarded = 0
	) 

	UNION ALL 

	SELECT 
	wb.objid,
	NULL AS refbillid,
	CONCAT('** Balance Forward ** ') AS particulars,
	wbs.fromdate AS refdate,
	wb.balanceforward AS amount,
	0 AS amtpaid,
	0 AS discount,
	0 AS surcharge,
	0 AS interest,
	'bal-fwd' AS txntype
	FROM water_bill wb 
	INNER JOIN water_billschedule wbs ON wb.scheduleid = wbs.objid  
	WHERE wb.objid = $P{firstbillid}
	AND wb.balanceforward < 0

	UNION ALL 

	SELECT 
	pmt.objid,
	NULL AS refbillid,
	CONCAT('** Payment Ref No.', pmt.refno, ' ** ') AS particulars,
	pmt.refdate,
	0 AS amount,
	pmt.amount AS amtpaid,
	0 AS discount,
	0 AS surcharge,
	0 AS interest,
	'payment' AS txntype
	FROM water_payment pmt
	INNER JOIN water_bill wb ON pmt.billid = wb.objid
	INNER JOIN water_billschedule wbs ON wb.scheduleid = wbs.objid  
	WHERE wb.acctid = $P{acctid} 
	AND wbs.year = $P{year}
	AND reftype <> 'bf-credit'

) x
ORDER BY x.refdate ASC



