DROP TABLE IF EXISTS vw_online_business_application 
;
DROP VIEW IF EXISTS vw_online_business_application 
;
CREATE VIEW vw_online_business_application AS 
select 
	oa.objid AS objid, 
	oa.state AS state, 
	oa.dtcreated AS dtcreated, 
	oa.createdby_objid AS createdby_objid, 
	oa.createdby_name AS createdby_name, 
	oa.controlno AS controlno, 
	oa.apptype AS apptype, 
	oa.appyear AS appyear, 
	oa.appdate AS appdate, 
	oa.dtsubmitted AS dtsubmitted, 
	oa.prevapplicationid AS prevapplicationid, 
	oa.business_objid AS business_objid, 
	b.bin AS bin, 
	oa.tradename AS tradename, 
	oa.businessname AS businessname, 
	b.address_objid AS address_objid, 
	oa.address_text AS address_text, 
	b.owner_objid AS owner_objid, 
	oa.owner_name AS owner_name, 
	b.owner_address_objid AS owner_address_objid, 
	oa.owner_address_text AS owner_address_text, 
	b.yearstarted AS yearstarted, 
	b.orgtype AS orgtype, 
	b.permittype AS permittype, 
	b.officetype AS officetype, 
	oa.step AS step 
from online_business_application oa 
	left join business b on b.objid = oa.business_objid
	left join business_application a on a.objid = oa.prevapplicationid 
;



INSERT IGNORE INTO sys_usergroup (objid, title, domain, userclass, orgclass, role) 
VALUES ('BPLS.EXT', 'BPLS EXT', 'BPLS', 'usergroup', NULL, 'EXT');

INSERT IGNORE INTO sys_usergroup (objid, title, domain, userclass, orgclass, role) 
VALUES ('BPLS.MHO', 'BPLS MHO', 'BPLS', NULL, NULL, 'MHO');

INSERT IGNORE INTO sys_usergroup (objid, title, domain, userclass, orgclass, role) 
VALUES ('BPLS.MPDO', 'BPLS MPDO', 'BPLS', NULL, NULL, 'MPDO');

INSERT IGNORE INTO sys_usergroup (objid, title, domain, userclass, orgclass, role) 
VALUES ('BPLS.OBO', 'BPLS OBO', 'BPLS', NULL, NULL, 'OBO');
