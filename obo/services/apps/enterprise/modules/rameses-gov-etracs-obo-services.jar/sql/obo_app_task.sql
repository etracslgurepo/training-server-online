[getMainTaskList]
SELECT sn.title, tsk.dtcreated AS startdate, tsk.enddate, 
CASE WHEN NOT( tsk.enddate IS NULL ) THEN 'Completed' ELSE 'Ongoing' END AS status,
sn.tracktime, ac.processname 
FROM obo_app_task tsk
INNER JOIN obo_app app ON app.objid = tsk.refid 
INNER JOIN obo_appclass ac ON app.appclassid = ac.objid 
INNER  JOIN sys_wf_node sn ON tsk.state = sn.name AND sn.processname = ac.processname 
WHERE app.objid = $P{appid} 
AND  NOT(sn.name IN ('start','end')) 
ORDER BY tsk.dtcreated


[getAllSubTasks]
SELECT z.title, z.startdate, z.enddate, z.org_objid, z.org_name, z.processname, z.parentprocessname,
CASE WHEN NOT( z.enddate IS NULL ) THEN 'Completed' ELSE 'Ongoing' END AS status
FROM (
	SELECT tt.activationstate, tt.title, os.org_objid, os.org_name, ti.supersededid, tt.processname, tt.parentprocessname,  
	(SELECT dtcreated FROM obo_app_taskitem_task 
	   WHERE refid = ti.objid ORDER BY dtcreated ASC LIMIT 1  ) AS startdate,
	(SELECT dtcreated FROM obo_app_taskitem_task 
	   WHERE refid = ti.objid AND state = 'end' LIMIT 1 ) AS enddate 
	FROM obo_app_taskitem ti 
	INNER JOIN obo_taskitem_type tt ON ti.typeid = tt.objid 
	LEFT JOIN obo_section os ON tt.sectionid = os.objid 
	WHERE ti.appid = $P{appid}
) z 


[getTaskCount]
SELECT bt.state, COUNT(*) AS count 
FROM obo_app_task bt 
INNER JOIN obo_app app ON app.taskid=bt.taskid
INNER JOIN obo_appclass ac ON app.appclassid = ac.objid 
INNER JOIN sys_wf_node sn ON sn.processname = ac.processname AND sn.name = bt.state 
WHERE bt.assignee_objid IS NULL
AND ac.processname = $P{processname}
AND bt.enddate IS NULL 
AND sn.tracktime = 1
AND sn.role IN ( ${roles} )
GROUP BY bt.state

UNION ALL

SELECT 'mytask', COUNT(*) AS count 
FROM obo_app_task bt 
INNER JOIN obo_app app ON app.taskid = bt.taskid
INNER JOIN obo_appclass ac ON app.appclassid = ac.objid 
WHERE ac.processname = $P{processname}
AND bt.assignee_objid = $P{userid}
AND bt.state NOT IN ('start', 'end')

[getAllTaskCount]
SELECT bt.state, COUNT(*) AS count 
FROM obo_app_task bt 
INNER JOIN obo_app app ON app.taskid=bt.taskid
INNER JOIN obo_appclass ac ON app.appclassid = ac.objid 
INNER JOIN sys_wf_node sn ON sn.processname = ac.processname AND sn.name = bt.state 
WHERE bt.assignee_objid IS NULL
AND bt.enddate IS NULL 
AND sn.tracktime = 1
AND sn.role IN ( ${roles} )
GROUP BY bt.state

UNION ALL

SELECT 'mytask', COUNT(*) AS count 
FROM obo_app_task bt 
INNER JOIN obo_app app ON app.taskid = bt.taskid
INNER JOIN obo_appclass ac ON app.appclassid = ac.objid 
AND bt.assignee_objid = $P{userid}
AND bt.state NOT IN ('start', 'end')
