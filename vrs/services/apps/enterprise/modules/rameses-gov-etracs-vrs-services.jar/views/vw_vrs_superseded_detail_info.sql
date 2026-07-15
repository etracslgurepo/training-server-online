DROP VIEW IF EXISTS vw_vrs_superseded_detail_info;
CREATE VIEW vw_vrs_superseded_detail_info AS

SELECT di.supersededid 
FROM vrs_detail_info di 
INNER JOIN vrs_txn txn ON di.txnid = txn.objid 
INNER JOIN vrs_txn_task tsk ON tsk.taskid = txn.taskid 
WHERE tsk.state = 'end'
