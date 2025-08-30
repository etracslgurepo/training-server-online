DROP VIEW IF EXISTS vw_occupancy_certificate_issued;
CREATE VIEW vw_occupancy_certificate_issued AS
SELECT 
   cp.*,
   e.entitytype AS applicant_entitytype,
   e.name AS applicant_name,
   at.state AS task_state,

   app.appno,
   app.trackingno,
   app.appdate,

   oc.controlno,
   oc.dtissued, 
   bt.objid AS occupancytype_objid,
   bt.title AS occupancytype_title,   
   od.objid AS occupancytype_division_objid,
   od.title AS occupancytype_division_title,   
   og.objid AS occupancytype_group_objid,
   og.title AS occupancytype_group_title,   

   LTRIM(CONCAT(
      (CASE WHEN bp.location_unitno IS NULL THEN '' ELSE CONCAT(' ', bp.location_unitno) END),
      (CASE WHEN bp.location_bldgno IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgno) END),
      (CASE WHEN bp.location_bldgname IS NULL THEN '' ELSE CONCAT(' ', bp.location_bldgname) END),
      (CASE WHEN bp.location_lotno IS NULL THEN '' ELSE CONCAT( ' Lot.', bp.location_lotno) END),
      (CASE WHEN bp.location_blockno IS NULL THEN '' ELSE CONCAT(' Blk.', bp.location_blockno) END),
      (CASE WHEN bp.location_street IS NULL THEN '' ELSE CONCAT(' ', bp.location_street) END),
      (CASE WHEN bp.location_subdivision IS NULL THEN '' ELSE CONCAT(', ', bp.location_subdivision) END),      
      (CASE WHEN bp.location_barangay_name IS NULL THEN '' ELSE CONCAT(', ', bp.location_barangay_name ) END)
   )) AS location_text


FROM obo_doctype dt 
INNER JOIN obo_app_doc ac ON ac.doctypeid = dt.objid AND dt.code = 'OCCUPANCY_CERTIFICATE'
INNER JOIN obo_control oc ON ac.controlid = oc.objid 
INNER JOIN occupancy_certificate cp ON ac.appid = cp.objid 
INNER JOIN building_permit bp ON cp.bldgpermitid = bp.objid 
INNER JOIN obo_app app ON cp.objid = app.objid  
INNER JOIN obo_app_task at ON at.taskid = app.taskid 
INNER JOIN obo_app_entity e ON app.applicantid = e.objid 
INNER JOIN obo_occupancy_type bt ON cp.occupancytypeid = bt.objid 
INNER JOIN obo_occupancy_type_division od ON bt.divisionid = od.objid 
INNER JOIN obo_occupancy_type_group og ON od.groupid = og.objid; 
  