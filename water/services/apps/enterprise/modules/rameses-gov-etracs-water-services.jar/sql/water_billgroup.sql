[getBillReading]
SELECT 
	wb.acctid,
	wb.reading
FROM water_bill wb 
INNER JOIN water_billschedule bs ON wb.scheduleid = bs.objid 
INNER JOIN water_account wa ON wb.acctid = wa.objid  
WHERE wa.billgroupid = $P{billgroupid} 
AND ((bs.year*12)+bs.month) = $P{yearmonth} 
