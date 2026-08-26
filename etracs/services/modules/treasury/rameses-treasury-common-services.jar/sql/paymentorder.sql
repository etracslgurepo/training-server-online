[findStatus]
select t0.*, 
	concat(
		'paymentorder', 
		(case 
			when t0.state not in ('PAID','CANCELLED') then '' 
			else concat('_', lower(t0.state)) 
		end)
	) as _schemaname 
from ( 
	select po.objid, po.state, po.expirydate, po.txndate, pot.barcodeid, 
		(case when po.expirydate is not null and po.expirydate < cast(NOW() as DATE) then 1 else 0 end) as expired 
	from paymentorder po 
		inner join paymentorder_type pot on pot.objid = po.typeid 
	where po.objid = $P{refno} 

	union all 

	select po.objid, 'PAID' as state, po.expirydate, po.txndate, pot.barcodeid, 
		(case when po.expirydate is not null and po.expirydate < cast(NOW() as DATE) then 1 else 0 end) as expired 
	from paymentorder_paid po 
		inner join paymentorder_type pot on pot.objid = po.typeid 
	where po.objid = $P{refno} 

	union all 

	select po.objid, 'CANCELLED' as state, po.expirydate, po.txndate, pot.barcodeid, 
		(case when po.expirydate is not null and po.expirydate < cast(NOW() as DATE) then 1 else 0 end) as expired 
	from paymentorder_cancelled po 
			inner join paymentorder_type pot on pot.objid = po.typeid 
	where po.objid = $P{refno} 
)t0 
