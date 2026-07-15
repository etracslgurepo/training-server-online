DROP VIEW IF EXISTS vw_vrs_vehicletype_field;
CREATE VIEW vw_vrs_vehicletype_field AS
SELECT 
  vf.*,
  v.datatype
FROM vrs_vehicletype_field vf
INNER JOIN vrs_variable v ON vf.name = v.objid
ORDER BY vf.sortorder