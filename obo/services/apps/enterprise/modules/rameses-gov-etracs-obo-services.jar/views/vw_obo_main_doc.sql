DROP VIEW IF EXISTS vw_obo_main_doc;
CREATE VIEW vw_obo_main_doc AS 
SELECT 
   ac.objid AS appclassid,
   ad.appid,
   od.code AS doctypeid,
   oc.objid AS controlid,
   oc.controlno,
   oc.expirydate,
   oc.dtissued,
   oc.issuedby_name
FROM obo_appclass ac 
INNER JOIN obo_doctype od ON ac.doctypeid = od.code
INNER JOIN obo_app_doc ad ON ad.doctypeid = od.objid 
LEFT JOIN obo_control oc ON ad.controlid  = oc.objid ;  

