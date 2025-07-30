[findAccountInfo]
SELECT
wai.*,
wm.objid AS meter_objid,
wm.serialno AS meter_serialno,
wm.brand AS meter_brand,
wm.capacity AS meter_capacity,
wm.sizeid AS meter_sizeid, 
wm.customerowned AS meter_customerowned,
wm.stocktype AS meter_stocktype,
wm.state AS meter_state,
sz.objid AS meter_size_objid,
sz.title AS meter_size_title,
wm.supersededid AS meter_supersededid,

wc.objid AS classification_objid, 
wc.name AS classification_name, 
wc.description AS classification_description,

CASE WHEN wai.meterid IS NULL THEN 0 ELSE 1 END AS metered

FROM water_account_info wai 
LEFT JOIN water_meter wm ON wai.meterid = wm.objid
LEFT JOIN water_metersize sz ON wm.sizeid = sz.objid 
LEFT JOIN water_classification wc ON wai.classificationid = wc.objid 
WHERE wai.objid = $P{objid}
