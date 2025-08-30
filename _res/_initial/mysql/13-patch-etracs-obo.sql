-- 
-- Patch ETRACS for OBO Plugin
--   
-- 
-- BEGIN
-- 

USE `training_etracs_2_5_05_03`;

INSERT IGNORE INTO `sys_domain` (`name`, `connection`) VALUES ('OBO', 'obo');

INSERT IGNORE INTO `collectiontype` (`objid`, `state`, `name`, `title`, `formno`, `handler`, `allowbatch`, `barcodekey`, `allowonline`, `allowoffline`, `sortorder`, `org_objid`, `org_name`, `fund_objid`, `fund_title`, `category`, `allowpaymentorder`, `allowkiosk`, `allowcreditmemo`, `system`, `queuesection`, `info`, `connection`, `servicename`) 
VALUES ('COLLTYPE7f9d790d:19495d64074:-7e30', 'ACTIVE', 'OSCP', 'OSCP', '51', 'obo', 0, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '[:]', 'obo', 'OboPaymentService');

drop table if exists ztmp_collectiontype_obo 
;
create table ztmp_collectiontype_obo 
select objid from collectiontype where ( 
	`handler` = 'obo' and objid <> 'COLLTYPE7f9d790d:19495d64074:-7e30' 
)
;
delete from collectiontype where ( 
	objid = 'COLLTYPE7f9d790d:19495d64074:-7e30'  
	and (select count(*) from ztmp_collectiontype_obo) > 0 
)
;
drop table if exists ztmp_collectiontype_obo 
;


INSERT IGNORE INTO `sys_fileloc` (`objid`, `url`, `rootdir`, `defaultloc`, `loctype`, `user_name`, `user_pwd`, `info`) 
VALUES ('obo-fileserver', '192.168.2.22', 'obo', 0, 'ftp', 'ftpuser', 'ftpuser1234', '[downloadhost: \'http://${url}:2180\']');

-- 
-- DONE 
-- 
