[insertItems]
insert into draftremittanceitem ( 
	objid, remittanceid, controlid, 
	amount, totalnoncash, totalcash, 
	cancelled, voided 
)
select 
	c.objid, $P{remittanceid} as remittanceid, c.controlid, 
	c.amount, c.totalnoncash, (c.amount - c.totalnoncash) as totalcash, 
	(case when c.state = 'CANCELLED' then 1 else 0 end) as cancelled, 
	(
		select (case when count(*)>0 then 1 else 0 end) 
		from cashreceipt_void 
		where receiptid = c.objid 
	) as voided 
from cashreceipt c 
	inner join af_control afc on afc.objid = c.controlid 
	inner join af on af.objid = afc.afid 
where c.collector_objid = $P{collectorid} 
	and c.remittanceid is null 
	and c.receiptdate < $P{txndate}  
	and c.state in ('POSTED','DELEGATED','CANCELLED') 

[getAFSummary]
select * 
from ( 
    select 
        concat(rem.collector_objid, remi.remittanceid, c.controlid) as objid, 
        remi.remittanceid, rem.collector_objid, c.controlid, af.formtype, 
        afc.afid as formno, afc.stubno, afc.startseries, afc.endseries, min(c.series) as fromseries, 
        (max(c.series) + (case when afu.`interval` > 1 then afu.`interval`-1 else 0 end)) as toseries, 
        count(*) as qty, sum(remi.amount) as amount, afu.`interval`, 0 as formindex  
    from draftremittance rem 
        inner join draftremittanceitem remi on remi.remittanceid = rem.objid 
        inner join cashreceipt c on c.objid = remi.objid 
        inner join af_control afc on afc.objid = c.controlid 
        inner join af on (af.objid = afc.afid and af.formtype = 'serial') 
        inner join afunit afu on (afu.itemid = af.objid and afu.unit = afc.unit)
    where rem.objid = $P{remittanceid}  
    group by 
        concat(rem.collector_objid, remi.remittanceid, c.controlid), 
        remi.remittanceid, rem.collector_objid, c.controlid, af.formtype,
        afc.afid, afc.stubno, afc.startseries, afc.endseries, afu.`interval`  

    union all 

    select 
        concat(rem.collector_objid, remi.remittanceid, c.controlid) as objid, 
        remi.remittanceid, rem.collector_objid, c.controlid, af.formtype, 
        afc.afid as formno, afc.stubno, afc.startseries, afc.endseries, 
        min(c.series) as fromseries, max(c.series) as toseries, 
        convert((sum(remi.amount) / af.denomination), signed) as qty, 
        sum(remi.amount) as amount, 0 as `interval`, 1 as formindex   
    from draftremittance rem 
        inner join draftremittanceitem remi on remi.remittanceid = rem.objid 
        inner join cashreceipt c on c.objid = remi.objid 
        inner join af_control afc on afc.objid = c.controlid 
        inner join af on (af.objid = afc.afid and af.formtype <> 'serial') 
    where rem.objid = $P{remittanceid}  
    group by 
        concat(rem.collector_objid, remi.remittanceid, c.controlid), 
        remi.remittanceid, rem.collector_objid, c.controlid, af.formtype,
        afc.afid, afc.stubno, afc.startseries, afc.endseries, af.denomination 
)t1 
order by formindex, formno, startseries 


[getVoidReceipts]
select 
	c.objid, c.receiptno, c.receiptdate, c.paidby, c.paidbyaddress, 
	c.amount, cv.txndate as void_txndate, cv.reason as void_reason 
from draftremittance rem 
	inner join draftremittanceitem remi on remi.remittanceid = rem.objid 
	inner join cashreceipt c on c.objid = remi.objid 
	inner join cashreceipt_void cv on cv.receiptid = c.objid 
	inner join af_control afc on afc.objid = c.controlid 
	inner join af on (af.objid = afc.afid and af.formtype = 'serial') 
where rem.objid = $P{remittanceid} 
order by c.receiptdate, c.receiptno  


[findDelegatedAFSummary]
select 
	r.remittanceid, c.controlid, afc.afid as formno, afc.stubno, 
	min(c.series) as fromseries, max(c.series) as toseries, count(*) as qty  
from draftremittanceitem r  
	inner join cashreceipt c on c.objid = r.objid 
	inner join af_control afc on afc.objid = c.controlid 
where r.remittanceid = $P{remittanceid}  
	and c.state = 'DELEGATED' 
group by r.remittanceid, c.controlid, afc.afid, afc.stubno


[bindRemittance]
update cashreceipt c, draftremittanceitem remi set 
	c.remittanceid = remi.remittanceid 
where remi.remittanceid = $P{remittanceid} 
	and c.objid = remi.objid  


[getNoncashPayments]
select * 
from ( 
	select distinct 
		nc.refid, nc.reftype, ch.refno, ch.refdate, nc.particulars, ch.amount 
	from draftremittance rem 
		inner join draftremittanceitem remi on remi.remittanceid = rem.objid 
		inner join cashreceipt c on c.objid = remi.objid 
		inner join cashreceiptpayment_noncash nc on nc.receiptid = c.objid 
		inner join checkpayment ch on ch.objid = nc.refid 
	where rem.objid = $P{remittanceid} 
		and nc.reftype = 'CHECK' 
	union all 
	select distinct 
		nc.refid, nc.reftype, eft.refno, eft.refdate, nc.particulars, eft.amount 
	from draftremittance rem 
		inner join draftremittanceitem remi on remi.remittanceid = rem.objid 
		inner join cashreceipt c on c.objid = remi.objid 
		inner join cashreceiptpayment_noncash nc on nc.receiptid = c.objid 
		inner join eftpayment eft on eft.objid = nc.refid 
	where rem.objid = $P{remittanceid} 
		and nc.reftype = 'EFT' 
)t0 
order by refdate, refno 


[getAFSummaryConflicts]
select t1.* 
from ( 
	select 
		t0.controlid, t0.afid, t0.formtype, 
		t0.assigneelevel, t0.assigneeid, t0.assigneename, 
		count(*) as txncount, min(t0.series) as minseries, max(t0.series) as maxseries 
	from ( 
		select 
			dri.controlid, dri.objid as receiptid, 
			afc.afid, af.formtype, c.state, c.series, 
			(case when c.state = 'DELEGATED' then c.subcollector_objid else c.collector_objid end) as assigneeid, 
			(case when c.state = 'DELEGATED' then c.subcollector_name else c.collector_name end) as assigneename, 
			(case when c.state = 'DELEGATED' then 1 else 0 end) as assigneelevel  
		from 
			(
				select distinct 
					dri.remittanceid, dri.controlid 
				from draftremittanceitem dri 
					inner join cashreceipt c on (c.objid = dri.objid and c.state = 'DELEGATED') 
				where dri.remittanceid = $P{remittanceid} 
			)aa  
			inner join draftremittanceitem dri on (
				dri.remittanceid = aa.remittanceid and dri.controlid = aa.controlid
			)
			inner join cashreceipt c on c.objid = dri.objid 
			inner join af_control afc on afc.objid = c.controlid 
			inner join af on af.objid = afc.afid 	
	)t0 
	group by 
		t0.controlid, t0.afid, t0.formtype, 
		t0.assigneelevel, t0.assigneeid, t0.assigneename 
)t1  
order by controlid, minseries 


[removeDelegatedItems]
delete dri 
from draftremittance dr 
	inner join draftremittanceitem dri on dri.remittanceid = dr.objid 
	inner join cashreceipt c on (c.objid = dri.objid and c.state = 'DELEGATED') 
where dr.objid = $P{remittanceid} 
