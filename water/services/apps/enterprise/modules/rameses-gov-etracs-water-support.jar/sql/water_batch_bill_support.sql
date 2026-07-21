[findBatch]
select wbb.*, wbbt.state 
from water_batch_bill wbb 
	inner join water_batch_bill_task wbbt on wbbt.taskid = wbb.taskid 
where wbb.objid = $P{batchid} 


[getBatchItems]
select 
	wbb.objid as batchid, wbbt.state as batchstate, 
	wb.objid as billid, wb.billno, wb.billdate, wb.acctid, 
	wa.acctno, wb.prevreading, wb.reading, wb.volume, wm.capacity  
from water_batch_bill wbb 
	inner join water_batch_bill_task wbbt on wbbt.taskid = wbb.taskid 
	left join water_bill wb on wb.batchid = wbb.objid 
	left join water_account wa on wa.objid = wb.acctid 
	inner join water_account_info wai on wai.objid = wb.acctinfoid 
	inner join water_meter wm on wm.objid = wai.meterid 
where wbb.objid = $P{batchid} 
	and wb.prevreading is not null 
	and wb.reading is not null 
	${filters} 
