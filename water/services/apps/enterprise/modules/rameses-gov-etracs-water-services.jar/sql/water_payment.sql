[getBillItems]
SELECT 
   z.*, 
   (z.amount + z.surcharge + z.interest) AS total
FROM    
(SELECT 
  pi.objid,
	abi.itemid,
	bi.year,
	bi.month,
	pi.amount AS amount,

	IFNULL( (
		SELECT zpi.amount 
		FROM water_billitem_subitem zbi 
		INNER JOIN water_paymentitem zpi ON zbi.objid = zpi.billitemrefid 
		WHERE zbi.billitemrefid = bi.objid AND zbi.type = 'SURCHARGE'  
		AND zpi.paymentid = $P{paymentid}
	)  ,0) AS surcharge,

	IFNULL( (
		SELECT zpi.amount 
		FROM water_billitem_subitem zbi 
		INNER JOIN water_paymentitem zpi ON zbi.objid = zpi.billitemrefid 
		WHERE zbi.billitemrefid = bi.objid AND zbi.type = 'INTEREST'  
		AND zpi.paymentid = $P{paymentid}
	)  ,0) AS interest

FROM water_billitem bi  
INNER JOIN water_abstract_billitem abi ON bi.objid = abi.objid  
INNER JOIN water_paymentitem pi ON pi.billitemrefid = abi.objid 
WHERE pi.paymentid = $P{paymentid} ) z

ORDER BY z.year ASC, z.month ASC





