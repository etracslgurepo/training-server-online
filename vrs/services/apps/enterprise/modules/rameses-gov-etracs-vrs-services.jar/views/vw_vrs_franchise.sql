DROP VIEW IF EXISTS vw_vrs_franchise;
CREATE VIEW vw_vrs_franchise AS
SELECT 
fran.*,
CASE WHEN fran.expirydate < NOW() THEN 1 ELSE 0 END AS expired,
CASE WHEN sp.objid IS NULL THEN 0 ELSE 1 END AS superseded

FROM  vrs_franchise fran
LEFT JOIN vrs_franchise sp ON sp.supersededid = fran.objid 
