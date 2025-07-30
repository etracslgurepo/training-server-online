DROP VIEW IF EXISTS vw_water_txn_paymentitem;
CREATE VIEW vw_water_txn_paymentitem AS 

SELECT 
  bi.objid,
  pi.paymentid,
  CONCAT( ia.title, ' ', CONVERT(bi.year,CHAR(4)), '-', CONVERT(bi.month,CHAR)) AS particulars,
  pi.amount   
FROM water_billitem bi 
INNER JOIN water_abstract_billitem abi ON bi.objid=abi.objid 
INNER JOIN water_paymentitem pi ON pi.billitemrefid = bi.objid 
INNER JOIN water_itemaccount ia ON abi.itemid = ia.objid 

UNION 

SELECT 
  sbi.objid,
  pi.paymentid,
  CONCAT( ia.title, ' ', CONVERT(bi.year,CHAR(4)), '-', CONVERT(bi.month,CHAR)) AS particulars,
  pi.amount   
FROM water_billitem_subitem sbi 
INNER JOIN water_abstract_billitem abi ON sbi.objid=abi.objid
INNER JOIN water_paymentitem pi ON pi.billitemrefid = sbi.objid 
INNER JOIN water_billitem bi ON sbi.billitemrefid = bi.objid  
INNER JOIN water_itemaccount ia ON abi.itemid = ia.objid 