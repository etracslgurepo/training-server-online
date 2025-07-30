DROP VIEW IF EXISTS vw_water_bill;
CREATE VIEW vw_water_bill AS 
SELECT
mb.*,
ma.acctno,
mai.acctname,
mbs.year,
mbs.month,
mbs.fromdate,
mbs.todate,
mbs.discdate,
mbs.duedate,
mbs.expirydate,

(mb.balanceforward + mb.interest + mb.surcharge + mb.amount) - (mb.totalpayment + mb.discount) AS balance,
mai.owner_objid,
mai.owner_name,
mai.location_text,

ma.indexno,
mai.location_barangay_name,
mai.location_barangay_objid,
mai.classification_objid,
mai.classification_name,

mai.contact_mobileno,
mai.contact_email,
mai.contact_phoneno,

CASE WHEN mbs.expirydate < NOW() THEN 1 ELSE 0 END AS expired,
mai.metered,
mai.meterid,
mai.meter_objid,
mai.meter_serialno,
mai.meter_brand,
mai.meter_capacity,
mai.meter_sizeid, 
mai.meter_customerowned,
mai.meter_stocktype,
mai.meter_state,
mai.meter_size_objid,
mai.meter_size_title,
mai.meter_supersededid,
mai.units,

wag.objid AS acctgroupid,
wag.name AS acctgroup_name,
wag.fullpath AS acctgroup_fullpath,
wag.leftindex AS acctgroup_sortorder

FROM water_bill mb
INNER JOIN water_billschedule mbs ON mb.scheduleid = mbs.objid 
INNER JOIN water_account ma ON mb.acctid = ma.objid 
INNER JOIN vw_water_bill_account_info mai ON ma.acctinfoid = mai.objid
LEFT JOIN water_acctgroup wag ON mai.acctgroupid = wag.objid 
