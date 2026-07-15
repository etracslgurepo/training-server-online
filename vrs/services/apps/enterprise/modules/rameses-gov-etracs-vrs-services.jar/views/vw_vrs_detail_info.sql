DROP VIEW IF EXISTS vw_vrs_detail_info;

CREATE VIEW vw_vrs_detail_info AS
SELECT 
info.*,
vf.name,
var.datatype,
var.caption,
CASE WHEN superseder.objid IS NULL THEN 0 ELSE 1 END AS superseded,
CASE WHEN tsk.state = 'end' THEN 1 ELSE 0 END AS posted,
ay.acctid,
vf.sortorder

FROM  vrs_detail_info info 
INNER JOIN vrs_vehicletype_field vf ON info.fieldid = vf.objid  
INNER JOIN vrs_variable var ON vf.name = var.objid
INNER JOIN vrs_txn txn ON info.txnid = txn.objid 
INNER JOIN vrs_txn_task tsk ON txn.taskid = tsk.taskid
INNER JOIN vrs_account_year ay ON txn.acctyearid = ay.objid  
LEFT JOIN vrs_detail_info superseder ON info.objid = superseder.supersededid
