DROP VIEW IF EXISTS vw_market_billitem_subitem;
CREATE VIEW vw_market_billitem_subitem AS 
SELECT
abi.*,
pbi.billitemrefid,
(abi.amount - abi.amtpaid) AS balance,
pbi.type,
CASE WHEN xbi.objid IS NULL THEN 0 ELSE 1 END AS superseded,
xbi.supersededid AS supersederid

FROM market_abstract_billitem abi
INNER JOIN market_billitem_subitem pbi ON pbi.objid = abi.objid 
LEFT JOIN market_abstract_billitem xbi ON abi.objid = xbi.supersededid 
