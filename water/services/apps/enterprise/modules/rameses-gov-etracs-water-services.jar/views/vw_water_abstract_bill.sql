DROP VIEW IF EXISTS vw_water_abstract_bill;
CREATE VIEW vw_water_abstract_bill AS 

SELECT
wb.objid,
wb.billno,
wb.billgroupid, 
'waterbill' AS billtype,
wb.year, wb.month,
CONCAT( CONVERT(wb.year, CHAR(4)), ' ', CONVERT(wb.month, CHAR(2)) ) AS particulars,
(wb.balanceforward + wb.interest + wb.surcharge + wb.amount) AS amount 
FROM vw_water_bill wb

UNION 

SELECT
tb.objid,
tb.billno,
null as billgroupid,
'txnbill' AS billtype,
null as year, null as month, 
txn.txntypeid AS particulars,
tb.amount 
FROM water_txn_bill tb 
INNER JOIN water_txn txn ON tb.txnid = txn.objid 


