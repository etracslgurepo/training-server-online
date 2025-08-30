DELETE FROM obo_payment;
UPDATE obo_app_doc SET controlid = NULL;
DELETE FROM obo_control;
UPDATE obo_app_fee SET billid = NULL;
DELETE FROM obo_bill;
DELETE FROM obo_app_fee;

UPDATE obo_app_req_finding SET supersededid = NULL; 
DELETE FROM obo_app_req_finding;

DELETE FROM obo_app_doc_info;
DELETE FROM sys_fileitem;
DELETE FROM obo_app_attachment;
DELETE FROM sys_file;
DELETE FROM obo_app_tag;
DELETE FROM building_permit_rpu;
DELETE FROM occupancy_rpu_item;
DELETE FROM occupancy_rpu;
DELETE FROM obo_app_doc_checklist;
UPDATE obo_app_taskitem SET taskid = NULL;
DELETE FROM obo_app_taskitem_task;
UPDATE obo_app_taskitem SET supersededid = NULL;
DELETE FROM obo_app_taskitem;
DELETE FROM obo_app_professional;
UPDATE obo_app_finding SET supersededid = NULL;
DELETE FROM obo_app_finding;
DELETE FROM obo_app_transmittal;
DELETE FROM occupancy_certificate;
DELETE FROM building_permit;
DELETE FROM obo_app_doc;

UPDATE obo_app SET taskid = NULL, applicantid = NULL;
DELETE FROM obo_app_task;
DELETE FROM obo_app_entity;
DELETE FROM obo_professional;
DELETE FROM obo_professional_info;
DELETE FROM obo_app;
DELETE FROM obo_appno;

DELETE FROM sys_email_queue;
DELETE FROM sys_message_queue;
DELETE FROM sys_sequence;

UPDATE obo_doctype SET approverid = NULL, endorserid = NULL;
DELETE FROM sys_signature;

DELETE FROM obo_itemaccount WHERE doctypeid IN ( SELECT objid FROM obo_doctype WHERE type = 'BARANGAY' );
DELETE FROM obo_doctype WHERE type = 'BARANGAY';


