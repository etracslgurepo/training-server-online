DROP VIEW IF EXISTS vw_vrs_txn;
CREATE VIEW vw_vrs_txn AS
SELECT 
txn.*,
typ.name AS txntype_name,
typ.title AS txntype_title,
typ.processname AS txntype_processname,

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
ay.acctid,
acct.acctno,
ay.activeyear,
ay.lastyearrenewed,

accttxn.txntypeid AS apptype,

grp.name AS acctgroup_name,
grp.fullpath AS acctgroup_fullpath,
grp.description AS acctgroup_description,

o.owner_name,
o.owner_address_text,
v.objid AS vehicletypeid,
v.objid AS vehicletype_objid,
v.title AS vehicletype_title,
v.permitdoctypeid AS vehicletype_permitdoctypeid,
v.franchisedoctypeid AS vehicletype_franchisedoctypeid,
ay.permitid,
ay.franchiseid,

vp.objid AS permit_objid,
vp.doctypeid AS permit_doctypeid,
vp.issueno AS permit_issueno,
vp.dtissued AS permit_dtissued,
vp.expirydate AS permit_expirydate,
CASE WHEN vp.expirydate < NOW() THEN 1 ELSE 0 END AS permit_expired,

fp.objid AS franchise_objid,
fp.doctypeid AS franchise_doctypeid,
fp.franchiseno AS franchise_franchiseno,
fp.particulars AS franchise_particulars,
fp.dtissued AS franchise_dtissued,
fp.expirydate AS franchise_expirydate,
CASE WHEN fp.expirydate < NOW() THEN 1 ELSE 0 END AS franchise_expired, 

o.contact_phoneno,
o.contact_mobileno,
o.contact_email


FROM vrs_txn txn 
INNER JOIN vrs_account_year ay ON txn.acctyearid = ay.objid 
INNER JOIN vrs_txn accttxn ON ay.txnid = accttxn.objid
INNER JOIN vrs_header_info o ON  txn.headerinfoid = o.objid
INNER JOIN vrs_account acct ON ay.acctid = acct.objid
INNER JOIN vrs_account_group grp ON o.acctgroupid = grp.objid 

INNER JOIN vrs_txntype typ ON txn.txntypeid = typ.objid 
INNER JOIN vrs_vehicletype v ON acct.vehicletypeid = v.objid  
INNER JOIN vrs_txn_task t ON txn.taskid = t.taskid 
INNER JOIN sys_wf_node sn ON sn.processname = typ.processname AND sn.name = t.state  
 
LEFT JOIN vrs_doc_issuance vp ON ay.permitid = vp.objid 

LEFT JOIN vrs_franchise fp ON ay.franchiseid = fp.objid 


