[removeAllPaymentItems]
DELETE FROM water_paymentitem 
WHERE paymentid IN 
(
    SELECT wp.objid 
    FROM water_payment wp 
    INNER JOIN water_bill wb ON wp.billid = wb.objid 
    WHERE wb.acctid = $P{acctid}
)

[removeAllCreditBillItems]
DELETE FROM water_credit_billitem 
WHERE objid IN (
	SELECT abi.objid  
	FROM water_abstract_billitem abi 
	INNER JOIN water_bill wb ON abi.billid = wb.objid 
	WHERE wb.acctid = $P{acctid}
)

[unpostAllPayments]
UPDATE water_payment wp, water_bill wb 
SET wp.posted = 0 
WHERE wp.billid = wb.objid 
AND wb.acctid = $P{acctid} 
AND wp.reftype IN ('cashreceipt', 'eor') 

[removeNonCashPayments]
DELETE FROM water_payment
WHERE billid IN (
    SELECT objid FROM water_bill WHERE acctid = $P{acctid}
)
AND reftype NOT IN ('cashreceipt', 'eor');

[removeAllBillSubItems]
DELETE FROM water_billitem_subitem 
WHERE objid IN (
	SELECT abi.objid  
	FROM water_abstract_billitem abi 
	INNER JOIN water_bill wb ON abi.billid = wb.objid 
	WHERE wb.acctid = $P{acctid} AND abi.auto = 1
)

[removeAllBillItems]
DELETE FROM water_billitem 
WHERE objid IN (
	SELECT abi.objid  
	FROM water_abstract_billitem abi 
	INNER JOIN water_bill wb ON abi.billid = wb.objid 
	WHERE wb.acctid = $P{acctid} AND abi.auto = 1
)

[removeAllAbstractBillItems]
DELETE FROM water_abstract_billitem 
WHERE billid IN (
	SELECT wb.objid  
	FROM water_bill wb  
	WHERE wb.acctid = $P{acctid} 
)
AND objid NOT IN (SELECT objid FROM water_billitem)
AND objid NOT IN (SELECT objid FROM water_billitem_subitem)

[unpayBillItems]
UPDATE water_abstract_billitem bi 
SET bi.amtpaid = 0 
WHERE billid IN (
	SELECT wb.objid  
	FROM water_bill wb  
	WHERE wb.acctid = $P{acctid} 	
)

[updateBillsForUpdate]
UPDATE water_bill wb
SET state = 'PENDING' 
WHERE acctid = $P{acctid}

[updateBillValidityDate]
UPDATE water_bill wb, water_billschedule bs  
SET wb.validitydate = CASE WHEN NOW() < bs.duedate THEN bs.duedate ELSE  bs.expirydate END 
WHERE wb.scheduleid = bs.objid 




