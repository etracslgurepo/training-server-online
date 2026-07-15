DROP VIEW IF EXISTS vw_vrs_billitem_subitem;
CREATE VIEW vw_vrs_billitem_subitem AS 
SELECT
abi.*,
pbi.billitemrefid,
(abi.amount - abi.amtpaid) AS balance,
pbi.type,
CASE WHEN xbi.objid IS NULL THEN 0 ELSE 1 END AS superseded,
xbi.supersededid AS supersederid

FROM vrs_abstract_billitem abi
INNER JOIN vrs_billitem_subitem pbi ON pbi.objid = abi.objid 
LEFT JOIN vrs_abstract_billitem xbi ON abi.objid = xbi.supersededid 