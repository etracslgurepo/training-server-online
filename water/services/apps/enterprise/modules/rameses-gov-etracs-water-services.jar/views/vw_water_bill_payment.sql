DROP VIEW IF EXISTS vw_water_bill_payment;
CREATE VIEW vw_water_bill_payment AS 
SELECT
pp.*,
wb.acctid,
wb.billno AS billrefno,
bs.year,
bs.month
FROM water_payment pp
INNER JOIN water_bill wb ON pp.billid = wb.objid 
INNER JOIN water_billschedule bs ON wb.scheduleid = bs.objid 
WHERE pp.reftype IN ('cashreceipt', 'eor')
AND pp.voided = 0