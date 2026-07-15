[getList]
SELECT 
z.objid,
z.refid,
z.refno,
z.reftype,
z.refdate,
z.txnmode,
z.voided,
z.remarks,
SUM(z.amount) AS amount, 
0 AS discount

FROM 
(
	SELECT
		mp.objid,
		mp.refid,
		mp.refno,
		mp.reftype,
		mp.refdate,
		mp.txnmode,
		mp.voided,
		mp.remarks,
		CASE WHEN mp.voided=1 THEN pi.voidamount ELSE pi.amount END AS amount, 
		0 AS discount
	FROM vrs_payment mp 
	INNER JOIN vrs_paymentitem pi ON pi.parentid = mp.objid
	WHERE pi.billid = $P{billid}

	UNION 

	SELECT     
	    mp.objid,
		mp.refid,
		mp.refno,
		mp.reftype,
		mp.refdate,
		mp.txnmode,
		mp.voided,
		mp.remarks,
		abi.amtpaid AS amount, 
		0 AS discount
	FROM vrs_payment mp 
	INNER JOIN vrs_credit_billitem cr ON cr.paymentid = mp.objid 
	INNER JOIN vrs_abstract_billitem abi ON abi.objid = cr.objid 
	WHERE abi.billid = $P{billid}
) z

GROUP BY 
z.objid,
z.refid,
z.refno,
z.reftype,
z.refdate,
z.txnmode,
z.voided,
z.remarks

ORDER BY z.refdate DESC