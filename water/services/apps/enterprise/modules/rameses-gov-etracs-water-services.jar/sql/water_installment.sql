[getBillItems]
SELECT
    bi.objid, 
    abi.itemid,
    bi.year,
    bi.month, 
    pi.amount,
    0 AS amtpaid,
    1 AS forwarded,
    1 AS auto
FROM water_paymentitem pi 
INNER JOIN water_abstract_billitem abi ON pi.billitemrefid = abi.objid 
INNER JOIN water_billitem bi ON abi.objid = bi.objid 
WHERE pi.paymentid = $P{paymentid}

[getSubItems]
SELECT
    sbi.billitemrefid,
    sbi.type,
    pi.amount,
 	0 AS amtpaid, 
 	1 AS forwarded,
 	1 AS auto

FROM water_paymentitem pi 
INNER JOIN water_abstract_billitem abi ON pi.billitemrefid = abi.objid 
INNER JOIN water_billitem_subitem sbi ON abi.objid = sbi.objid 
WHERE pi.paymentid = $P{paymentid}