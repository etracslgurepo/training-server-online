DROP VIEW IF EXISTS vw_vrs_doctype;
CREATE VIEW vw_vrs_doctype AS
SELECT 
dt.*,
CASE WHEN dt2.objid IS NULL THEN 0 ELSE 1 END AS superseded 
FROM  vrs_doctype dt 
LEFT JOIN vrs_doctype dt2 ON dt2.supersededid = dt.objid 

