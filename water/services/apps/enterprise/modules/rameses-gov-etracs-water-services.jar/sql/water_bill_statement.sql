[getItems]
SELECT x.*, (x.amount + x.discount + x.surcharge + x.interest + x.amtpaid ) AS total
FROM 

(SELECT y.objid, 
   CONCAT( ia.title, ' ', 
    SUBSTR('JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC',  (4*(bi.month-1)) + 1 ,3),
   ' ', CONVERT(bi.year, CHAR(4))) AS particulars,
   ia.sortorder,
   yabi.billdate AS refdate, bi.year, bi.month, 
   y.amount, 0 AS amtpaid, y.discount, y.surcharge, y.interest,
   ia.itemtype AS txntype,
   ((bi.year*12)+bi.month) AS billyearmonth,
   yabi.remarks
	FROM
	(
		SELECT z.objid, SUM(z.amount) AS amount, SUM(z.discount) AS discount, 
		  SUM(z.surcharge) AS surcharge, SUM(z.interest) AS interest 
		FROM 
			(

			#basic	
			SELECT
			bi.objid, 
			abi.amount,
			0 AS discount,
			0 AS surcharge,
			0 AS interest
			FROM water_billitem bi 
			INNER JOIN water_abstract_billitem abi ON bi.objid = abi.objid
			WHERE abi.billid = $P{billid}
			
			UNION 

			#discount 
			SELECT 
			di.billitemrefid AS objid,
			0 AS amount, 
			(0 - di.amount) AS discount,
			0 AS surcharge,
			0 AS interest
			FROM water_discountitem di 
			INNER JOIN water_abstract_billitem abi ON di.billitemrefid = abi.objid 
			WHERE abi.billid =  $P{billid} 
			
			UNION

			#surcharge and interest
			SELECT 
			sbi.billitemrefid AS objid,
			0 AS amount, 
			0 AS discount,
			(CASE WHEN sbi.type = 'SURCHARGE' THEN abi.amount ELSE 0 END) AS surcharge,
			(CASE WHEN sbi.type = 'INTEREST' THEN abi.amount ELSE 0 END) AS interest
			FROM water_billitem_subitem sbi 
			INNER JOIN water_abstract_billitem abi ON sbi.objid = abi.objid
			WHERE abi.billid = $P{billid}
			AND abi.objid NOT IN ( SELECT supersededid FROM water_abstract_billitem 
			   WHERE billid = abi.billid AND NOT(supersededid IS NULL) )
			) z
		GROUP BY z.objid  	
	) y	
INNER JOIN water_billitem bi ON y.objid = bi.objid 
INNER JOIN water_abstract_billitem yabi ON bi.objid = yabi.objid
INNER JOIN water_bill wb ON yabi.billid = wb.objid  
INNER JOIN water_itemaccount ia ON yabi.itemid = ia.objid 

UNION ALL

SELECT 
	pmt.objid,
	'Balance Forward' AS particulars,
	-1 AS sortorder,
	bs.fromdate as refdate,
	bs.year, bs.month, 
	0 AS amount,
	(0 - pmt.amount) AS amtpaid,
	0 AS discount,
	0 AS surcharge,
	0 AS interest,
	'bf-credit' AS txntype,
	NULL AS billyearmonth,
	NULL AS remarks
FROM water_payment pmt
INNER JOIN water_bill wb ON pmt.billid = wb.objid
INNER JOIN water_billschedule bs ON wb.scheduleid = bs.objid  
WHERE wb.objid = $P{billid} AND reftype = 'bf-credit' 

UNION ALL 

SELECT 
	pmt.objid,
	CONCAT('** Payment Ref No.', pmt.refno, ' ** ') AS particulars,
	((bs.year*12)+bs.month) AS sortorder,
	pmt.refdate,
	bs.year, bs.month,
	0 AS amount,
	(0 - pmt.amount) AS amtpaid,
	0 AS discount,
	0 AS surcharge,
	0 AS interest,
	'payment' AS txntype,
	NULL AS billyearmonth,
	NULL AS remarks
FROM water_payment pmt
INNER JOIN water_bill wb ON pmt.billid = wb.objid
INNER JOIN water_billschedule bs ON wb.scheduleid = bs.objid  
WHERE wb.objid = $P{billid} AND reftype <> 'bf-credit' 
) x

ORDER BY x.refdate ASC, x.sortorder



