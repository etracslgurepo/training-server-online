DROP VIEW IF EXISTS vw_standalone_permit;
CREATE VIEW vw_standalone_permit AS 
SELECT 
   a.*,
   sp.bldgpermitid,
   sp.title,
   sp.description,
   sp.inspectiondate,
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
   ot.objid AS occupancytype_objid,
   ot.title AS occupancytype_title,   
   od.objid AS occupancytype_division_objid,
   od.title AS occupancytype_division_title,   
   og.objid AS occupancytype_group_objid,
   og.title AS occupancytype_group_title,

   bp.location_text
 
FROM obo_app a
INNER JOIN standalone_permit sp ON  a.objid = sp.objid 
INNER JOIN obo_appclass ac ON a.appclassid = ac.objid 
INNER JOIN vw_building_permit bp ON sp.bldgpermitid = bp.objid
INNER JOIN obo_app_task t ON a.taskid = t.taskid
INNER JOIN sys_wf_node sn ON sn.processname = ac.processname AND sn.name = t.state 
INNER JOIN obo_occupancy_type ot ON bp.occupancytypeid = ot.objid 
INNER JOIN obo_occupancy_type_division od ON ot.divisionid = od.objid 
INNER JOIN obo_occupancy_type_group og ON od.groupid = og.objid 

