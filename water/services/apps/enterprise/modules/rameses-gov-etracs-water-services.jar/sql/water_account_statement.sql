[getItems]
SELECT x.*, (x.amount + x.discount + x.surcharge + x.interest + x.amtpaid ) AS total
FROM 

(
	SELECT 	
	y.objid, 
   CONCAT( ia.title, ' ', 
    SUBSTR('JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC',  (4*(y.month-1)) + 1 ,3),
   ' ', CONVERT(y.year, CHAR(4))) AS particulars,
   ia.sortorder,
   y.billdate AS refdate, 
   y.year, 
   y.month, 
   y.amount, 0 AS amtpaid, y.discount, y.surcharge, y.interest,
   ia.itemtype AS txntype,
   ((y.year*12)+y.month) AS billyearmonth

	FROM (
      SELECT
			bi.objid, 
			bi.itemid,
			bi.billdate,
			bi.year,
			bi.month,
			bi.amount,
			0 AS discount,
			IFNULL((
				SELECT _si.amount 
				FROM vw_water_billitem_subitem _si
				INNER JOIN vw_water_bill _mb ON _si.billid = _mb.objid 
				WHERE _mb.acctid = mb.acctid 
				AND ((_si.refyear*12)+_si.refmonth) = ((bi.year*12)+bi.month) 
				AND _mb.year = $P{year} AND _mb.month <= $P{month}
				AND _si.type = 'SURCHARGE'
				ORDER BY _si.billdate DESC 
				LIMIT 1
			),0) AS surcharge, 
			
			IFNULL((
				SELECT _si.amount 
				FROM vw_water_billitem_subitem _si
				INNER JOIN vw_water_bill _mb ON _si.billid = _mb.objid 
				WHERE _mb.acctid = mb.acctid 
				AND ((_si.refyear*12)+_si.refmonth) = ((bi.year*12)+bi.month) 
				AND _mb.year = $P{year} AND _mb.month <= $P{month}
				AND _si.type = 'INTEREST'
				ORDER BY _si.billdate DESC 
				LIMIT 1	
			),0) AS interest 

			FROM vw_water_billitem bi 
			INNER JOIN vw_water_bill mb ON bi.billid = mb.objid 
			WHERE mb.acctid = $P{acctid}
			AND mb.year = $P{year}
			AND mb.month = $P{beginmonth}
			AND bi.forwarded = 1
			
			UNION ALL 

      SELECT
			bi.objid, 
			bi.itemid,
			bi.billdate,
			mb.year,
			mb.month,
			bi.amount,
			(0 - IFNULL((SELECT SUM(amount) FROM water_discountitem WHERE billitemrefid = bi.objid ),0)) AS discount,
			IFNULL((
				SELECT _si.amount 
				FROM vw_water_billitem_subitem _si
				INNER JOIN vw_water_bill _mb ON _si.billid = _mb.objid 
				WHERE _mb.acctid = mb.acctid 
				AND ((_si.refyear*12)+_si.refmonth) = ((mb.year*12)+mb.month) 
				AND _mb.year = $P{year} AND _mb.month <= $P{month}
				AND _si.type = 'SURCHARGE'
				ORDER BY _si.billdate DESC 
				LIMIT 1
			),0) AS surcharge, 
			
			IFNULL((
				SELECT _si.amount 
				FROM vw_water_billitem_subitem _si
				INNER JOIN vw_water_bill _mb ON _si.billid = _mb.objid 
				WHERE _mb.acctid = mb.acctid 
				AND ((_si.refyear*12)+_si.refmonth) = ((mb.year*12)+mb.month) 
				AND _mb.year = $P{year} AND _mb.month <= $P{month}
				AND _si.type = 'INTEREST'
				ORDER BY _si.billdate DESC 
				LIMIT 1
			),0) AS interest 

			FROM vw_water_billitem bi 
			INNER JOIN vw_water_bill mb ON bi.billid = mb.objid 
			WHERE mb.acctid = $P{acctid}
			AND mb.year = $P{year}
			AND mb.month <= $P{month}
			AND bi.forwarded = 0
	) y 
	INNER JOIN water_itemaccount ia ON y.itemid = ia.objid 


	UNION ALL

	#for balance forward display only for january
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
		pmt.reftype AS txntype,
		NULL AS billyearmonth
	FROM water_payment pmt
	INNER JOIN vw_water_bill mb ON pmt.billid = mb.objid
	INNER JOIN water_billschedule bs ON mb.scheduleid = bs.objid  
	WHERE mb.acctid = $P{acctid} 
	AND mb.balanceforward < 0
	AND pmt.reftype = 'bf-credit'
	AND mb.year = $P{year} 
	AND mb.month = $P{beginmonth}

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
		NULL AS billyearmonth
	FROM water_payment pmt
	INNER JOIN vw_water_bill mb ON pmt.billid = mb.objid
	INNER JOIN water_billschedule bs ON mb.scheduleid = bs.objid  
	WHERE mb.acctid = $P{acctid} 
	AND pmt.reftype <> 'bf-credit'
	AND mb.year = $P{year} 
	AND mb.month <= $P{month}

) x

ORDER BY x.refdate ASC, x.sortorder



