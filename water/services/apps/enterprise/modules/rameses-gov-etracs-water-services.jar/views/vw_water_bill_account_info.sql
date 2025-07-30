DROP TABLE IF EXISTS vw_water_bill_account_info
;
DROP VIEW IF EXISTS vw_water_bill_account_info
;
CREATE VIEW vw_water_bill_account_info AS 
SELECT

wai.objid, 
wai.acctname,
wai.owner_objid,
wai.owner_name,
wai.location_text,
wai.location_barangay_name,
wai.location_barangay_objid,


wai.contact_mobileno,
wai.contact_email,
wai.contact_phoneno,

1 AS metered,
wai.meterid,
wai.units,

wm.objid AS meter_objid,
wm.serialno AS meter_serialno,
wm.brand AS meter_brand,
wm.capacity AS meter_capacity,
wm.sizeid AS meter_sizeid, 
wm.customerowned AS meter_customerowned,
wm.stocktype AS meter_stocktype,
wai.meterstatus AS meter_state,
sz.objid AS meter_size_objid,
sz.title AS meter_size_title,
wm.supersededid AS meter_supersededid,

wc.objid AS classification_objid, 
wc.name AS classification_name, 
wc.description AS classification_description,
wai.acctgroupid

FROM water_account_info wai 
INNER JOIN water_meter wm ON wai.meterid = wm.objid
INNER JOIN water_metersize sz ON wm.sizeid = sz.objid 
INNER JOIN water_classification wc ON wai.classificationid = wc.objid

UNION

SELECT

wai.objid, 
wai.acctname,
wai.owner_objid,
wai.owner_name,
wai.location_text,
wai.location_barangay_name,
wai.location_barangay_objid,


wai.contact_mobileno,
wai.contact_email,
wai.contact_phoneno,

0 AS metered,
wai.meterid,
wai.units,

NULL meter_objid,
NULL AS meter_serialno,
NULL AS meter_brand,
NULL AS meter_capacity,
NULL AS meter_sizeid, 
NULL AS meter_customerowned,
NULL AS meter_stocktype,
NULL AS meter_state,
NULL AS meter_size_objid,
NULL AS meter_size_title,
NULL AS meter_supersededid,

wc.objid AS classification_objid, 
wc.name AS classification_name, 
wc.description AS classification_description,
wai.acctgroupid

FROM water_account_info wai
INNER JOIN water_classification wc ON wai.classificationid = wc.objid 
WHERE wai.meterid IS NULL
;