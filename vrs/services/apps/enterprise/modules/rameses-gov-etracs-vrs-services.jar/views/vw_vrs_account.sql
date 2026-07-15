DROP VIEW IF EXISTS vw_vrs_account;
CREATE VIEW vw_vrs_account AS
SELECT 
acct.*,
vt.objid AS vehicletype_objid,
vt.title AS vehicletype_title,
vt.permitdoctypeid AS vehicletype_permitdoctypeid,
vt.franchisedoctypeid AS vehicletype_franchisedoctypeid,
vt.maxallowedunits AS vehicletype_maxallowedunits,

ay.activeyear,
ay.lastyearrenewed,
txn.txntypeid AS apptype,
o.owner_name,
o.owner_address_text,
o.owner_objid,

o.contact_phoneno,
o.contact_mobileno,
o.contact_email,


vp.objid AS permit_objid,
vp.doctypeid AS permit_doctypeid,
vp.issueno AS permit_issueno,
vp.dtissued AS permit_dtissued,
vp.expirydate AS permit_expirydate,
CASE WHEN vp.expirydate < NOW() THEN 1 ELSE 0 END AS permit_expired,

fp.objid AS franchise_objid,
fp.doctypeid AS franchise_doctypeid,
fp.state AS franchise_state,
fp.franchiseno AS franchise_franchiseno,
fp.dtissued AS franchise_dtissued,
fp.expirydate AS franchise_expirydate,
CASE WHEN fp.expirydate < NOW() THEN 1 ELSE 0 END AS franchise_expired, 

tsk.state AS task_state,
ay.txnid,
grp.name AS acctgroup_name,
grp.fullpath AS acctgroup_fullpath


FROM  vrs_account acct 
INNER JOIN vrs_vehicletype vt ON acct.vehicletypeid = vt.objid
INNER JOIN vrs_account_year ay ON acct.acctyearid = ay.objid 
INNER JOIN vrs_txn txn ON ay.txnid = txn.objid  
INNER JOIN vrs_header_info o ON  acct.headerinfoid = o.objid
INNER JOIN vrs_txn_task tsk ON txn.taskid = tsk.taskid 
INNER JOIN vrs_account_group grp ON o.acctgroupid = grp.objid
LEFT JOIN vrs_doc_issuance vp ON ay.permitid = vp.objid 
LEFT JOIN vrs_franchise fp ON ay.franchiseid = fp.objid

