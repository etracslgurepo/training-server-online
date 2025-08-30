DROP VIEW IF EXISTS vw_obo_app_doc; 
CREATE VIEW vw_obo_app_doc AS 
SELECT 
   a.*,
   os.org_objid AS org_objid,
   iss.controlno,
   iss.dtissued,
   iss.expirydate,
   iss.issuedby_name,
   iss.issuedby_objid,

   dt1.reportid,
   IFNULL(dt1.template, r1.template) AS template,
   
   dt1.endorserid,
   dt1.approverid,
   dt1.sectionid,
   dt1.checklistid,

   pmt.refno AS payment_refno,
   pmt.refdate AS payment_refdate,
   CASE
      WHEN pmt.refno IS NULL THEN 'UNPAID' 
      WHEN pmt.refid IS NULL THEN 'CAPTURED' 
      ELSE 'ONLINE' 
   END AS payment_txnmode,

   app.appno AS app_appno,
   app.trackingno AS app_trackingno, 
   app.title AS app_title,
   app.applicant_name AS app_applicant_name,
   app.location_text AS app_location_text,
   app.task_state AS task_state,
   app.task_assignee_objid AS task_assignee_objid,
   app.appclass AS app_appclass,
   app.schemaname AS app_schemaname

FROM obo_app_doc a 
INNER JOIN vw_obo_app app ON a.appid = app.objid  
INNER JOIN obo_doctype dt1 ON a.doctypeid = dt1.objid
LEFT JOIN sys_report_def r1 ON dt1.reportid = r1.name  
LEFT JOIN obo_section os ON dt1.sectionid = os.objid
LEFT JOIN obo_control iss ON a.controlid = iss.objid
LEFT JOIN obo_payment pmt ON pmt.appid = a.appid AND pmt.voided = 0
