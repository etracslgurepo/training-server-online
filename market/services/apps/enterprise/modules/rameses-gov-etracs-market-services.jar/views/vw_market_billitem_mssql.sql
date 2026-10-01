DROP VIEW IF EXISTS vw_market_billitem;
CREATE VIEW vw_market_billitem AS 
SELECT
mbi.*,
CASE WHEN mri.year IS NULL 
THEN mai.title + ' ' + CAST(mri.year AS varchar(4)) + ' ' + CAST(mri.month AS varchar(2))
ELSE mai.title
END AS particulars,
(mbi.amount - mbi.amtpaid) AS balance,
mri.year,
mri.month,
mri.duedate,
CASE WHEN abi.objid IS NULL THEN 0 ELSE 1 END AS superseded,
abi.supersededid AS supersederid

FROM market_abstract_billitem mbi
INNER JOIN market_billitem mri ON mri.objid = mbi.objid 
INNER JOIN market_itemaccount mai ON mbi.itemid = mai.objid  
LEFT JOIN market_abstract_billitem abi ON mbi.objid = abi.supersededid 
