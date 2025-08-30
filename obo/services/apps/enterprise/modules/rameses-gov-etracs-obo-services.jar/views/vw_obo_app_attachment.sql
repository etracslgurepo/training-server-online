DROP VIEW IF EXISTS vw_obo_app_attachment; 
CREATE VIEW vw_obo_app_attachment AS 

SELECT 
   att.*,
   typ.title AS title,
   typ.sectionid AS sectionid,
   CASE WHEN superseder.objid IS NULL THEN 0 ELSE 1 END AS superseded,
   sf.createdby_objid,
   sf.createdby_name,
   sf.dtcreated,
   sf.filetype
   
FROM obo_app_attachment att
INNER JOIN obo_attachment_type typ ON att.typeid = typ.objid 
INNER JOIN sys_file sf ON att.objid = sf.objid
LEFT JOIN obo_app_attachment superseder ON superseder.supersededid = att.objid 
