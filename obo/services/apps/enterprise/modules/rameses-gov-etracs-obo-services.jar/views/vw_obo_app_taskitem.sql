DROP VIEW IF EXISTS vw_obo_app_taskitem;
CREATE VIEW vw_obo_app_taskitem AS 
SELECT 
   a.*,
   os.objid AS sectionid,
   os.org_objid AS org_objid,
   et.title AS type_title,
   et.sortindex AS type_sortindex,
   app.appno AS app_appno,
   app.title AS app_title,
   app.applicant_name AS app_applicant_name,
   app.trackingno AS app_trackingno,
   app.task_state AS app_task_state,
   app.processname AS app_processname, 
   app.schemaname AS app_schemaname, 
   app.appclassid AS app_appclassid,
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
   et.processname AS task_processname,
   et.parentprocessname AS task_parentprocessname

FROM obo_app_taskitem a 
INNER JOIN obo_app_taskitem_task t ON a.taskid = t.taskid 
INNER JOIN obo_taskitem_type et ON a.typeid = et.objid 
LEFT JOIN obo_section os ON et.sectionid = os.objid
INNER JOIN sys_wf_node sn ON sn.processname = et.processname AND sn.name = t.state 
INNER JOIN vw_obo_app app ON a.appid = app.objid 
LEFT JOIN obo_app_taskitem ss ON ss.supersededid = a.objid 
WHERE ss.objid IS NULL