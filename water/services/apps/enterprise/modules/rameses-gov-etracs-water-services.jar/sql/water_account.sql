[findAccount]
SELECT
	ma.objid,
	ma.acctno,
	ma.acctinfoid,
	ma.lastbillid,
	ma.billgroupid,
	mai.meterid,
	(case when mai.meterid is null then 0 else 1 end) as metered,
	mai.classificationid,
	mai.units,
	mai.tags,
	wg.fullpath AS acctgroup

FROM water_account ma
INNER JOIN water_account_info mai ON ma.acctinfoid = mai.objid
LEFT JOIN water_acctgroup wg ON mai.acctgroupid = wg.objid 
WHERE ma.objid = $P{acctid}