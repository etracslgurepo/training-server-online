-- 
-- Patch EOR for OBO Plugin
--   
-- 
-- BEGIN
-- 

USE `training_eor`;

INSERT IGNORE INTO `epayment_plugin` (`objid`, `connection`, `servicename`) 
VALUES ('obo', 'obo', 'OboOnlineBillingService');

-- 
-- DONE 
-- 
