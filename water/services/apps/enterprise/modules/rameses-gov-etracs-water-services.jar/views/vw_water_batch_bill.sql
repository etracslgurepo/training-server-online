DROP VIEW IF EXISTS vw_water_batch_bill;
CREATE VIEW vw_water_batch_bill AS 
SELECT
mb.*,
mbs.groupid AS schedulegroupid,
mbs.year,
mbs.month,
mbs.fromdate,
mbs.todate,
mbs.discdate,
mbs.duedate,
mbs.readingduedate,
mbs.expirydate,
bg.description,

CASE WHEN mbs.expirydate < NOW() THEN 1 ELSE 0 END AS expired,

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
sn.properties AS task_properties

FROM water_batch_bill mb
INNER JOIN water_billschedule mbs ON mb.scheduleid = mbs.objid 
INNER JOIN water_billgroup bg ON mb.billgroupid = bg.objid 
INNER JOIN water_batch_bill_task t ON mb.taskid = t.taskid 
INNER JOIN sys_wf_node sn ON sn.processname = 'water_batch_bill' AND sn.name = t.state