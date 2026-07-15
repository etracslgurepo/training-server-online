DROP VIEW IF EXISTS vw_vrs_bill;
CREATE VIEW vw_vrs_bill AS 
SELECT
b.*,
vt.txntypeid,
ay.acctid,
ay.activeyear,
tsk.state AS task_state,

va.acctno,
o.owner_name AS ownername,
va.vehicletypeid,
typ.processname AS txntype_processname,
fa.franchiseno 

FROM vrs_bill b
INNER JOIN vrs_txn vt ON b.txnid = vt.objid 
INNER JOIN vrs_txntype typ ON vt.txntypeid = typ.objid 
INNER JOIN vrs_txn_task tsk ON vt.taskid = tsk.taskid 
INNER JOIN vrs_account_year ay ON vt.acctyearid = ay.objid 
INNER JOIN vrs_account va ON ay.acctid = va.objid 
INNER JOIN vrs_header_info o ON va.headerinfoid = o.objid 
LEFT JOIN  vrs_franchise fa ON ay.franchiseid = fa.objid  