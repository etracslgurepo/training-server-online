[getOpenBillItems]
SELECT 
	z.objid,
	z.year,
	z.month,
	z.itemid,
	z.uid,
	z.itemid AS item_objid,   
	(z.amount - z.amtpaid - z.discount) AS amount,
	z.installmentid

FROM 
	(SELECT 
	mbi.*,
	IFNULL((SELECT amount 
		FROM water_discountitem WHERE billitemrefid = mbi.objid ),0) AS discount
	FROM vw_water_billitem  mbi
	WHERE mbi.billid = $P{billid} ) z  

WHERE z.billid = $P{billid}
AND (z.amount - z.amtpaid - z.discount) > 0 
AND z.superseded=0 
