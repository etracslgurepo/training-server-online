DROP VIEW IF EXISTS vw_vrs_header_info;
CREATE VIEW vw_vrs_header_info AS
SELECT 
hi.*,
grp.name AS acctgroup_name,
grp.fullpath AS acctgroup_fullpath,
grp.description AS acctgroup_description
FROM vrs_header_info hi
INNER JOIN vrs_account_group grp ON hi.acctgroupid = grp.objid 
