DROP VIEW IF EXISTS vw_obo_app; 
CREATE VIEW vw_obo_app AS 

SELECT 
   app.*, 
   ac.objid AS appclass,    
   bp.title AS title,
   
   LTRIM(CONCAT(
      (CASE WHEN bp.location_unitno IS NULL THEN '' ELSE CONCAT(' ', bp.location_unitno) END),
      (CASE WHEN bp.location_bldgno IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgno) END),
      (CASE WHEN bp.location_bldgname IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgname) END),
      (CASE WHEN bp.location_lotno IS NULL THEN '' ELSE CONCAT( ' Lot.', bp.location_lotno) END),
      (CASE WHEN bp.location_blockno IS NULL THEN '' ELSE CONCAT(' Blk.', bp.location_blockno) END),
      (CASE WHEN bp.location_street IS NULL THEN '' ELSE CONCAT(' ', bp.location_street) END),
      (CASE WHEN bp.location_subdivision IS NULL THEN '' ELSE CONCAT(', ', bp.location_subdivision) END),      
      (CASE WHEN bp.location_barangay_name IS NULL THEN '' ELSE CONCAT(', ', bp.location_barangay_name ) END)
   )) AS location_text,

   be.name AS applicant_name,
   be.address_text AS applicant_address_text,
   be.profileid AS applicant_profileid,
   be.email AS applicant_email,
   be.mobileno AS applicant_mobileno,


   bt.state AS task_state, 
   bt.assignee_objid AS task_assignee_objid,
   ac.processname,
   ac.title AS doctitle,
   ac.doctypeid,
   ac.schemaname,
   ac.appnopattern,
   bill.objid AS billid,
   bill.billno AS bill_billno,
   bill.billdate AS bill_billdate,
   bill.state AS bill_state,
   bill.amount AS bill_amount,
   NULL AS inspectiondate

FROM obo_app app
INNER JOIN building_permit bp ON app.objid = bp.objid
INNER JOIN obo_appclass ac ON ac.objid = app.appclassid
INNER JOIN obo_app_entity be ON app.applicantid = be.objid 
INNER JOIN obo_app_task bt ON app.taskid = bt.taskid 
LEFT JOIN obo_bill bill ON app.objid = bill.appid 

UNION 

SELECT 
   app.*, 
   ac.objid AS appclass,    
   bp.title AS title,
   LTRIM(CONCAT(
      (CASE WHEN bp.location_unitno IS NULL THEN '' ELSE CONCAT(' ', bp.location_unitno) END),
      (CASE WHEN bp.location_bldgno IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgno) END),
      (CASE WHEN bp.location_bldgname IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgname) END),
      (CASE WHEN bp.location_lotno IS NULL THEN '' ELSE CONCAT( ' Lot.', bp.location_lotno) END),
      (CASE WHEN bp.location_blockno IS NULL THEN '' ELSE CONCAT(' Blk.', bp.location_blockno) END),
      (CASE WHEN bp.location_street IS NULL THEN '' ELSE CONCAT(' ', bp.location_street) END),
      (CASE WHEN bp.location_subdivision IS NULL THEN '' ELSE CONCAT(', ', bp.location_subdivision) END),      
      (CASE WHEN bp.location_barangay_name IS NULL THEN '' ELSE CONCAT(', ', bp.location_barangay_name ) END)
   )) AS location_text,

   be.name AS applicant_name,
   be.address_text AS applicant_address_text,
   be.profileid AS applicant_profileid,
   be.email AS applicant_email,
   be.mobileno AS applicant_mobileno,   

   bt.state AS task_state, 
   bt.assignee_objid AS task_assignee_objid,
   ac.processname,
   ac.title AS doctitle,
   ac.doctypeid,
   ac.schemaname,
   ac.appnopattern,
   bill.objid AS billid,
   bill.billno AS bill_billno,
   bill.billdate AS bill_billdate,
   bill.state AS bill_state,
   bill.amount AS bill_amount,
   oc.inspectiondate
 
FROM obo_app app
INNER JOIN occupancy_certificate oc ON oc.objid = app.objid 
INNER JOIN obo_appclass ac ON ac.objid = app.appclassid
INNER JOIN building_permit bp ON oc.bldgpermitid = bp.objid
INNER JOIN obo_app_entity be ON app.applicantid = be.objid 
INNER JOIN obo_app_task bt ON app.taskid = bt.taskid 
LEFT JOIN obo_bill bill ON app.objid = bill.appid 

UNION 

SELECT 
   app.*, 
   ac.objid AS appclass,    
   bp.title AS title,
   LTRIM(CONCAT(
      (CASE WHEN bp.location_unitno IS NULL THEN '' ELSE CONCAT(' ', bp.location_unitno) END),
      (CASE WHEN bp.location_bldgno IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgno) END),
      (CASE WHEN bp.location_bldgname IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgname) END),
      (CASE WHEN bp.location_lotno IS NULL THEN '' ELSE CONCAT( ' Lot.', bp.location_lotno) END),
      (CASE WHEN bp.location_blockno IS NULL THEN '' ELSE CONCAT(' Blk.', bp.location_blockno) END),
      (CASE WHEN bp.location_street IS NULL THEN '' ELSE CONCAT(' ', bp.location_street) END),
      (CASE WHEN bp.location_subdivision IS NULL THEN '' ELSE CONCAT(', ', bp.location_subdivision) END),      
      (CASE WHEN bp.location_barangay_name IS NULL THEN '' ELSE CONCAT(', ', bp.location_barangay_name ) END)
   )) AS location_text,

   be.name AS applicant_name,
   be.address_text AS applicant_address_text,
   be.profileid AS applicant_profileid,
   be.email AS applicant_email,
   be.mobileno AS applicant_mobileno,   

   bt.state AS task_state, 
   bt.assignee_objid AS task_assignee_objid,
   ac.processname,
   ac.title AS doctitle,
   ac.doctypeid,
   ac.schemaname,
   ac.appnopattern,
   bill.objid AS billid,
   bill.billno AS bill_billno,
   bill.billdate AS bill_billdate,
   bill.state AS bill_state,
   bill.amount AS bill_amount,
   sp.inspectiondate
 
FROM obo_app app
INNER JOIN standalone_permit sp ON sp.objid = app.objid 
INNER JOIN obo_appclass ac ON ac.objid = app.appclassid
INNER JOIN building_permit bp ON sp.bldgpermitid = bp.objid
INNER JOIN obo_app_entity be ON app.applicantid = be.objid 
INNER JOIN obo_app_task bt ON app.taskid = bt.taskid 
LEFT JOIN obo_bill bill ON app.objid = bill.appid 


