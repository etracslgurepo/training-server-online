-- 
-- Patch OBO settings
--   
-- 
-- BEGIN
-- 

USE `training_obo`;


INSERT IGNORE INTO `sys_fileloc` (`objid`, `url`, `rootdir`, `defaultloc`, `loctype`, `user_name`, `user_pwd`, `info`) 
VALUES ('obo-fileserver', '192.168.2.22', 'obo', 0, 'ftp', 'ftpuser', 'ftpuser1234', '[downloadhost: \'http://${url}:2180\']');

-- 
-- DONE 
-- 
