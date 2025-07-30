[getNodeListTaskCountByType]
select 'mytask' as state, count(*) as count 
from vw_water_txn t 
where t.txntypeid = $P{txntype} 
	and t.task_assignee_objid = 'USR-5bef7fef:18e97eef546:-7de1' 

union all 

select t.task_state as state, count(*) as count 
from vw_water_txn t 
where t.txntypeid = $P{txntype} 
	and t.task_assignee_name is null 
	and t.task_state in ( 
		select n.name 
		from sys_wf_node n, sys_user_role ur
		where n.processname = $P{processname} 
			and ur.userid = $P{userid} 
			and ur.role = n.role 
	) 
group by t.task_state
