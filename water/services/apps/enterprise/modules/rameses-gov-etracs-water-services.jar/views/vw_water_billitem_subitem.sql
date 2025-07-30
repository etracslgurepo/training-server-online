DROP VIEW IF EXISTS vw_water_billitem_subitem;
CREATE VIEW vw_water_billitem_subitem AS 
SELECT
abi.*,
pbi.billitemrefid,
(abi.amount - abi.amtpaid) AS balance,
pbi.type,
CASE WHEN xbi.objid IS NULL THEN 0 ELSE 1 END AS superseded,
xbi.supersededid AS supersederid,
rabi.itemid AS refitemid,
rbi.year AS refyear,
rbi.month AS refmonth

FROM water_abstract_billitem abi
INNER JOIN water_billitem_subitem pbi ON pbi.objid = abi.objid 
INNER JOIN water_abstract_billitem rabi ON rabi.objid = pbi.billitemrefid
LEFT JOIN water_billitem rbi ON rabi.objid = rbi.objid 
LEFT JOIN water_abstract_billitem xbi ON abi.objid = xbi.supersededid 
