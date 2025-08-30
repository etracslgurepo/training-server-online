DROP VIEW IF EXISTS vw_obo_app_task;
CREATE VIEW vw_obo_app_task AS 
SELECT 
t.taskid,
ac.processname,
t.refid, 
t.state, 
wf.title,
wf.tracktime,
wf.nodetype,
t.dtcreated,
t.startdate,
t.enddate, 
t.assignee_name,
t.assignee_objid 
FROM obo_app_task t
INNER JOIN obo_app app ON app.taskid = t.taskid 
INNER JOIN obo_appclass ac ON app.appclassid = ac.objid 
INNER JOIN sys_wf_node wf ON wf.processname = ac.processname AND t.state = wf.name 
AND wf.nodetype = 'state'
