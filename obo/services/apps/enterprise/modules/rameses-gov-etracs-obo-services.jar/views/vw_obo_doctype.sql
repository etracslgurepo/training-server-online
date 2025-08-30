DROP VIEW IF EXISTS vw_obo_doctype;
CREATE VIEW vw_obo_doctype AS 
SELECT 
   od.*,

   os.org_objid,
   os.org_name,
   CASE WHEN superseder.objid IS NULL THEN 0 ELSE 1 END AS superseded
FROM obo_doctype od 
LEFT JOIN obo_section os ON od.sectionid = os.objid
LEFT JOIN obo_doctype superseder ON superseder.supersededid = od.objid 
