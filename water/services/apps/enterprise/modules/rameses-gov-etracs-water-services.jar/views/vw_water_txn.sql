
DROP VIEW IF EXISTS vw_water_txn;
CREATE VIEW vw_water_txn AS
SELECT 

txn.objid,
txn.controlno,
txn.txntypeid,
txn.remarks,
txn.acctid,
CASE WHEN  txn.newacctinfoid IS NULL THEN txn.oldacctinfoid ELSE txn.newacctinfoid END AS acctinfoid,
txn.oldacctinfoid,
txn.newacctinfoid,
txn.taskid,
txn.info,

t.state AS task_state,
t.dtcreated AS task_dtcreated,
t.startdate AS task_startdate,
t.enddate AS task_enddate,
t.assignee_objid AS task_assignee_objid,
t.assignee_name AS task_assignee_name,
t.actor_objid AS task_actor_objid,
t.actor_name AS task_actor_name,
sn.title AS task_title,
sn.tracktime AS task_tracktime,
sn.properties AS task_properties,
tb.objid AS billid,
txn.controlno AS cashreceiptrefid

FROM water_txn txn 
INNER JOIN water_txntype typ ON txn.txntypeid = typ.objid 
INNER JOIN water_txn_task t ON txn.taskid = t.taskid 
INNER JOIN sys_wf_node sn ON sn.processname = typ.processname AND sn.name = t.state  
LEFT JOIN water_txn_bill tb ON txn.objid = tb.txnid   