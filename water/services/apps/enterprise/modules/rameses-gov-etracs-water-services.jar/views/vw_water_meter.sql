DROP VIEW IF EXISTS vw_water_meter;
CREATE VIEW vw_water_meter AS 
SELECT
wm.*,
wa.objid AS account_objid,
wa.acctno AS account_acctno,
wa.acctname AS account_acctname,

ws.objid AS size_objid,
ws.title AS size_title,

CASE WHEN swm.objid IS NULL THEN 0 ELSE 1 END AS superseded 

FROM water_meter wm 
LEFT JOIN water_metersize ws ON wm.sizeid = ws.objid 
LEFT JOIN water_meter swm ON wm.objid = swm.supersededid 
LEFT JOIN vw_water_account wa ON wm.currentacctid = wa.objid 
