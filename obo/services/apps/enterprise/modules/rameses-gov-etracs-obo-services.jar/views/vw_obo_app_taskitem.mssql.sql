if object_id('dbo.vw_obo_app_taskitem', 'V') IS NOT NULL 
   drop view dbo.vw_obo_app_taskitem; 
go
CREATE VIEW vw_obo_app_taskitem AS select 
a.objid AS objid,
a.appid AS appid,
a.typeid AS typeid,
a.taskid AS taskid,
os.objid AS sectionid,
os.org_objid AS org_objid,
et.title AS type_title,
et.sortindex AS type_sortindex,
app.task_state AS app_task_state,

app.appno AS app_appno,
app.title AS app_title,
app.applicant_name AS app_applicant_name,
app.trackingno AS app_trackingno,
app.processname AS app_processname, 
app.schemaname AS app_schemaname, 

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

( SELECT TOP 1 ti.dtcreated FROM obo_app_taskitem_task ti
     WHERE ti.refid = a.objid AND ti.state = 'evaluation' ORDER BY ti.dtcreated DESC ) AS evaluation_startdate,
(CASE WHEN t.state = 'end' THEN t.dtcreated ELSE NULL END) AS evaluation_enddate

from obo_app_taskitem a 
	inner join obo_app_taskitem_task t on a.taskid = t.taskid
	inner join obo_taskitem_type et on a.typeid = et.objid
	inner join sys_wf_node sn on (sn.processname = et.processname and sn.name = t.state) 
	inner join vw_obo_app app on a.appid = app.objid
	left join obo_section os on et.sectionid = os.objid
go 