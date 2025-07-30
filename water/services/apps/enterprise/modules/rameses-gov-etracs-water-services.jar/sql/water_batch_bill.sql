[resolveLastBillGroupId]
update 
  water_account a, 
  water_bill b 
set 
  b.billgroupid = a.billgroupid 
where 
  a.billgroupid = $P{billgroupid} 
  and b.objid = a.lastbillid 
  and b.billgroupid is null 


[getUnbilledAccounts]
SELECT a.objid 
FROM ( 
    SELECT 
        a.objid, 
        (
            SELECT COUNT(*) 
            FROM water_bill wb 
                INNER JOIN water_billschedule bs ON bs.objid = wb.scheduleid 
            WHERE wb.acctid = a.objid 
                AND wb.billgroupid = a.billgroupid
                AND bs.year = $P{year} AND bs.month = $P{month}   
        ) AS count1,
        (
            SELECT -COUNT(*) 
            FROM water_bill wb 
                INNER JOIN water_billschedule bs ON bs.objid = wb.scheduleid 
            WHERE wb.acctid = a.objid 
                AND wb.billgroupid = a.billgroupid 
                AND bs.year = $P{year} AND bs.month = $P{month} 
                AND wb.state = 'OPEN'
        ) AS count2  
    FROM water_account a 
        INNER JOIN water_account_task t on t.taskid = a.taskid  
    WHERE a.billgroupid = $P{billgroupid} 
        AND t.state = 'active'
)t0, water_account a 
WHERE a.objid = t0.objid 
    AND (t0.count1 + t0.count2) = 0 
ORDER BY a.indexno ASC 


[updateUnbatchedBills]
UPDATE water_bill wb, water_billschedule bs, water_account wa, water_account_task t 
SET wb.batchid = $P{batchno}
WHERE wb.batchid IS NULL
AND wb.acctid = wa.objid  
AND wa.taskid = t.taskid
AND wb.scheduleid = bs.objid 
AND bs.year = $P{year}
AND bs.month = $P{month}  
AND wb.billgroupid = $P{billgroupid} 
AND t.state = 'active'


[findAccountsForBillingCount]
SELECT COUNT(*) AS count 
FROM vw_water_account 
WHERE billgroupid = $P{billgroupid} 
AND task_state = 'active'
AND objid NOT IN (
    SELECT acctid 
	FROM vw_water_bill 
	WHERE year=$P{year} AND month=$P{month}
)


[getAccountsForBilling]
SELECT acctno
FROM vw_water_account 
WHERE billgroupid = $P{billgroupid} 
AND task_state = 'active'
AND objid NOT IN (
    SELECT acctid 
	FROM vw_water_bill 
	WHERE year=$P{year} AND month=$P{month}
)
LIMIT 10


[findBatchAccount]
select * 
from (
  select 
    bb.objid as batchid, bb.scheduleid, bs.`year`, bs.`month`,
    ((bs.`year` * 12) + bs.`month`) as yearmonthindex  
  from water_batch_bill bb 
    inner join water_billschedule bs on bs.objid = bb.scheduleid 
  where bb.objid = $P{batchid} 
)aa 
left join ( 
  select 
    b.acctid, a.acctno, a.lastbillid, 
    b.state as lastbill_state, 
    b.batchid as lastbill_batchid, 
    b.scheduleid as lastbill_scheduleid, 
    bs.`year` as lastbill_year, bs.`month` as lastbill_month, 
    ((bs.`year` * 12) + bs.`month`) as lastbill_yearmonthindex 
  from water_account a 
    inner join water_bill b on b.objid = a.lastbillid 
    inner join water_billschedule bs on bs.objid = b.scheduleid 
  where a.objid = $P{acctid} 
) bb on (1 = 1) 
