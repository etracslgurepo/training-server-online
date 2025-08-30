DROP VIEW IF EXISTS vw_obo_app_taskitem_task;
CREATE VIEW vw_obo_app_taskitem_task AS 
SELECT 
  t.*,
	ti.appid, 
	typ.title AS section,
	typ.sectionid,
	wf.title, 
	wf.tracktime,
	typ.activationstate   	
FROM obo_app_taskitem_task t 
INNER JOIN obo_app_taskitem ti ON t.refid = ti.objid 
INNER JOIN obo_taskitem_type typ ON ti.typeid = typ.objid 
INNER JOIN sys_wf_node wf ON wf.processname = typ.processname AND t.state = wf.name
WHERE wf.nodetype = 'state'; 
