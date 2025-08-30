DROP VIEW IF EXISTS vw_obo_app_req_finding;
CREATE VIEW vw_obo_app_req_finding AS 
SELECT 
	f.*,
	CASE WHEN superseder.objid IS NULL THEN 0 ELSE 1 END AS superseded,
	cm.title AS checklistitem_title,
	cm.indexno AS checklistitem_indexno,
	cm.category AS checklistitem_category,
	cm.params AS checklistitem_params

FROM obo_app_req_finding f
INNER JOIN obo_checklist_item cm ON f.checklistitemid = cm.objid 
LEFT JOIN obo_app_req_finding superseder ON f.objid = superseder.supersededid  