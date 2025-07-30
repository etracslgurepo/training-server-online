DROP VIEW IF EXISTS vw_water_installment;
CREATE VIEW vw_water_installment AS 
SELECT
pp.*,
p.refid,
p.refno,
p.refdate,
p.reftype,
p.txnid,
p.billid,
p.txnmode,
p.voided,
p.remarks,
p.posted,
p.amount,
txn.acctid,
txn.txntypeid,
(SELECT SUM(IFNULL(_abi.amtpaid,0)) 
FROM water_billitem _bi 
INNER JOIN water_abstract_billitem _abi ON _bi.objid = _abi.objid 
WHERE _bi.installmentid = pp.objid ) AS amtpaid
FROM water_installment pp
INNER JOIN water_payment p ON pp.paymentrefid = p.objid 
INNER JOIN water_txn txn ON p.txnid = txn.objid 