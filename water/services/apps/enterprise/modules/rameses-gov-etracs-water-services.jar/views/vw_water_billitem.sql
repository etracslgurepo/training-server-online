DROP VIEW IF EXISTS vw_water_billitem;
CREATE VIEW vw_water_billitem AS 
SELECT
mbi.*,
CASE WHEN mri.year IS NULL 
THEN CONCAT( mai.title, ' ', CONVERT(mri.year, CHAR(4)), ' ', CONVERT(mri.month, CHAR(2))  )
ELSE mai.title
END AS particulars,
mri.year,
mri.month,
mri.duedate,
mri.installmentid,
mri.recurring,
CASE WHEN abi.objid IS NULL THEN 0 ELSE 1 END AS superseded,
abi.supersededid AS supersederid

FROM water_abstract_billitem mbi
INNER JOIN water_billitem mri ON mri.objid = mbi.objid 
INNER JOIN water_itemaccount mai ON mbi.itemid = mai.objid  
LEFT JOIN water_abstract_billitem abi ON mbi.objid = abi.supersededid 
