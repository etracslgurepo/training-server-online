[getList]
SELECT y.* 
FROM

(SELECT 
	z.*,
	z.yearmonth - ( CASE WHEN z.unpaidyearmonth > 0 THEN z.unpaidyearmonth ELSE z.yearmonth END ) AS unpaidmonths

	FROM 
	(
		SELECT 
		mb.objid,
		mb.state,
		mb.acctno,
		mb.acctname,
		mb.year,
		mb.month,
		mb.billgroupid,
		mb.indexno,
		bg.acctgroupid AS acctgroup_name,
		((mb.year*12)+mb.month) AS yearmonth,
		IFNULL((
		  SELECT ((year*12)+month) 
		  FROM vw_water_billitem 
		  WHERE billid = mb.objid
		  AND (amount - amtpaid) > 0
		  ORDER BY year ASC, month ASC  
		  LIMIT 1
		),0) AS unpaidyearmonth,

		IFNULL(( 
			SELECT SUM(amount-amtpaid) 
			FROM vw_water_billitem 
			WHERE billid = mb.objid AND forwarded = 1
		),0) AS unpaidamount, 

		IFNULL(( 
			SELECT SUM(amount-amtpaid) 
			FROM vw_water_billitem_subitem 
			WHERE billid = mb.objid AND type = 'surcharge'	  
		),0) AS surcharge, 

		IFNULL(( 
			SELECT SUM(amount-amtpaid) 
			FROM vw_water_billitem_subitem 
			WHERE billid = mb.objid AND type = 'interest'	  
		),0) AS interest, 

		IFNULL(( 
			SELECT SUM(amount-amtpaid) 
			FROM vw_water_billitem 
			WHERE billid = mb.objid AND forwarded = 0 
		),0) AS currentamount, 

		IFNULL(( 
			SELECT SUM(amount - amtpaid) 
			FROM water_abstract_billitem 
			WHERE billid = mb.objid 
		),0) AS balance 

		FROM vw_water_bill mb 
		INNER JOIN water_billgroup bg ON mb.billgroupid = bg.objid 
		WHERE mb.year = $P{year} AND mb.month = $P{month}

	) z

) y

WHERE y.unpaidmonths > ${unpaidmonths}
ORDER BY y.unpaidmonths DESC, y.indexno