DROP VIEW IF EXISTS vw_vrs_account_detail_info;
CREATE VIEW vw_vrs_account_detail_info AS

SELECT 
di.*,
vf.caption,
vf.name,
vf.category,
vf.sortorder,
vf.required,
vf.textwidth,
vf.datatype,
ay.acctid,
CASE WHEN sup.supersededid IS NULL THEN 0 ELSE 1 END AS superseded,
1 AS posted 

FROM vrs_detail_info di
INNER JOIN vw_vrs_vehicletype_field vf ON di.fieldid = vf.objid 
INNER JOIN vrs_txn txn ON di.txnid = txn.objid
INNER JOIN vrs_account_year ay ON txn.acctyearid = ay.objid 
INNER JOIN vrs_account va ON ay.acctid = va.objid 
LEFT JOIN vw_vrs_superseded_detail_info sup ON sup.supersededid = di.objid 
WHERE sup.supersededid IS NULL 
