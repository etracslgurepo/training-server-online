alter table online_business_application modify business_objid varchar(50) null 
; 
alter table online_business_application modify prevapplicationid varchar(50) null 
;

alter table online_business_application add dtsubmitted datetime null 
;
update online_business_application set dtsubmitted = appdate where dtsubmitted is null
;
alter table online_business_application modify dtsubmitted datetime not null 
;
create index ix_dtsubmitted on online_business_application (dtsubmitted)
;

alter table online_business_application 
	add tradename varchar(300) null, 
	add businessname varchar(300) null,
	add address_text varchar(300) null,
	add owner_name varchar(300) null, 
	add owner_address_text varchar(300) null,
	add datainfo longtext null
; 

update 
	online_business_application aa, 
	( 
		select 
			oa.objid AS objid, 
			oa.business_objid AS business_objid, 
			b.bin AS bin, 
			b.tradename AS tradename, 
			b.businessname AS businessname, 
			b.address_text AS address_text, 
			b.owner_name AS owner_name, 
			b.owner_address_text AS owner_address_text 
		from online_business_application oa 
			inner join business_application a on a.objid = oa.prevapplicationid 
			inner join business b on b.objid = a.business_objid 
	)bb 
set 
	aa.tradename = bb.tradename, 
	aa.businessname = bb.businessname, 
	aa.address_text = bb.address_text, 
	aa.owner_name = bb.owner_name, 
	aa.owner_address_text = bb.owner_address_text 
where 
	aa.objid = bb.objid 
;

alter table online_business_application 
	modify tradename varchar(300) not null, 
	modify businessname varchar(300) not null,
	modify address_text varchar(300) not null,
	modify owner_name varchar(300) not null, 
	modify owner_address_text varchar(300) not null
;

create index ix_tradename on online_business_application (tradename)
;
create index ix_businessname on online_business_application (businessname)
;
create index ix_owner_name on online_business_application (owner_name)
;


DROP TABLE IF EXISTS vw_online_business_application 
;
DROP VIEW IF EXISTS vw_online_business_application 
;
CREATE VIEW vw_online_business_application AS 
select 
  oa.objid, 
  oa.state, 
  oa.dtcreated, 
  oa.createdby_objid, 
  oa.createdby_name, 
  oa.controlno, 
  oa.apptype, 
  oa.appyear, 
  oa.appdate, 
	oa.dtsubmitted,
  oa.prevapplicationid AS prevapplicationid, 
  oa.business_objid AS business_objid, 
  b.bin AS bin, 
	oa.tradename, 
	oa.businessname,
	b.address_objid,
  oa.address_text, 
  b.owner_objid,
  oa.owner_name, 
  b.owner_address_objid, 
  oa.owner_address_text, 
  b.yearstarted AS yearstarted, 
  b.orgtype AS orgtype, 
  b.permittype AS permittype, 
  b.officetype AS officetype, 
  oa.step AS step 
from online_business_application oa 
  left join business_application a on a.objid = oa.prevapplicationid 
  left join business b on b.objid = a.business_objid
;


