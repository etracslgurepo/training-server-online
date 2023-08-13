-- ## 2023-08-11

use training_etracs_2_5_05_02_003;

INSERT IGNORE INTO `sys_report_template` (`name`, `title`, `filepath`, `master`, `icon`) 
VALUES ('bpls/uaf/main-new', 'Unified Business Application Form', 'bpls/uaf/main-new.jasper', '0', NULL);




-- ## 2023-08-12

use training_etracs_2_5_05_02_003;

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




-- ## 2023-08-13

use training_eor;

CREATE TABLE `sys_message_queue` (
  `objid` varchar(50) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `dtsent` datetime DEFAULT NULL,
  `email` varchar(355) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  `errmsg` varchar(255) DEFAULT NULL,
  `connection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sys_message_template` (
  `objid` varchar(50) NOT NULL,
  `statement` mediumtext,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  `emailfield` varchar(255) DEFAULT NULL,
  `mobilenofield` varchar(255) DEFAULT NULL,
  `connection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `sys_report_template` (
  `name` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) NOT NULL,
  `master` int(11) DEFAULT NULL,
  `icon` mediumblob,
  PRIMARY KEY (`name`),
  UNIQUE KEY `uix_filepath` (`filepath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `sys_report_def` (
  `name` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `reportheader` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `statement` longtext,
  `permission` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  `querytype` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `paramhandler` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `ix_template` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




-- ## 2023-08-14

use training_etracs_2_5_05_02_003;
