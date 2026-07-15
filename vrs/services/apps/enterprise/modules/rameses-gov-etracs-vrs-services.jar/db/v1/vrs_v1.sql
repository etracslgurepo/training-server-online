-- MySQL dump 10.13  Distrib 5.7.22, for osx10.13 (x86_64)
--
-- Host: localhost    Database: vrs
-- ------------------------------------------------------
-- Server version	5.6.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_email_queue`
--

DROP TABLE IF EXISTS `sys_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_queue` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `reportid` varchar(50) DEFAULT NULL,
  `dtsent` datetime DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  `errmsg` varchar(255) DEFAULT NULL,
  `connection` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_queue`
--

LOCK TABLES `sys_email_queue` WRITE;
/*!40000 ALTER TABLE `sys_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_email_template`
--

DROP TABLE IF EXISTS `sys_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_template` (
  `objid` varchar(50) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_template`
--

LOCK TABLES `sys_email_template` WRITE;
/*!40000 ALTER TABLE `sys_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_image`
--

DROP TABLE IF EXISTS `sys_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_image` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` mediumtext,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_image`
--

LOCK TABLES `sys_image` WRITE;
/*!40000 ALTER TABLE `sys_image` DISABLE KEYS */;
INSERT INTO `sys_image` VALUES ('pedicab','Pedicab','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'),('tricycle','Tricycle Logo','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');
/*!40000 ALTER TABLE `sys_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_report_def`
--

DROP TABLE IF EXISTS `sys_report_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_report_def` (
  `name` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `reportheader` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `sortorder` int(4) DEFAULT NULL,
  `statement` mediumtext,
  `permission` varchar(100) DEFAULT NULL,
  `parameters` mediumtext,
  `querytype` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `properties` mediumtext,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `fk_sys_report_def_template` (`template`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_report_def`
--

LOCK TABLES `sys_report_def` WRITE;
/*!40000 ALTER TABLE `sys_report_def` DISABLE KEYS */;
INSERT INTO `sys_report_def` VALUES ('franchise_permit','Franchise Permit Report',NULL,NULL,NULL,NULL,NULL,'def svc = SERVICE.lookup( \"VrsDocService\" );\nreturn svc.getDocInfo( [objid: PARAMS.objid] );',NULL,'[]','SCRIPT','DEPLOYED',NULL,'[]'),('mtop_petition','Petition','vrs_txn:pedicab:form:reports',NULL,NULL,NULL,NULL,NULL,NULL,'[]',NULL,'DEPLOYED',NULL,'[]'),('statement_undertaking','Report Form 2','vrs_txn:pedicab:form:reports',NULL,NULL,NULL,1,NULL,NULL,'[]',NULL,'DEPLOYED',NULL,'[]'),('vrs_bill_printout','Print Bill','vrs_bill:form:reports','vrs_assessment',NULL,NULL,1,'def svc = SERVICE.lookup( \"VrsBillingService\" );\ndef bi = svc.getBillingInfo(  [billid: PARAMS.objid ] );\nreturn  bi;',NULL,'[]','SCRIPT','DEPLOYED','Prints the assessment billing form','[]'),('vrs_doc_report','VRS Doc Report',NULL,NULL,NULL,NULL,NULL,'def svc = SERVICE.lookup( \"VrsDocService\" );\ndef info = svc.getDocInfo( [objid: PARAMS.objid] );\ninfo.qrcode = \"qrcode:\" + info.issueno;\nreturn info;\n',NULL,'[]','SCRIPT','DEPLOYED','Data to fetch VRS documents','[]');
/*!40000 ALTER TABLE `sys_report_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_report_subreport_def`
--

DROP TABLE IF EXISTS `sys_report_subreport_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_report_subreport_def` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `reportid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `querytype` varchar(50) DEFAULT NULL,
  `statement` mediumtext,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_sys_report_subreport_def_reportid` (`reportid`) USING BTREE,
  CONSTRAINT `fk_sys_report_subreport_def_reportid` FOREIGN KEY (`reportid`) REFERENCES `sys_report_def` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_report_subreport_def`
--

LOCK TABLES `sys_report_subreport_def` WRITE;
/*!40000 ALTER TABLE `sys_report_subreport_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_report_subreport_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_report_template`
--

DROP TABLE IF EXISTS `sys_report_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_report_template` (
  `name` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) NOT NULL,
  `master` int(1) DEFAULT NULL,
  `icon` mediumblob,
  PRIMARY KEY (`name`) USING BTREE,
  UNIQUE KEY `uix_sys_report_template_filepath` (`filepath`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_report_template`
--

LOCK TABLES `sys_report_template` WRITE;
/*!40000 ALTER TABLE `sys_report_template` DISABLE KEYS */;
INSERT INTO `sys_report_template` VALUES ('mtop_application','MTOP Application','formreports/mtop_application.jasper',0,NULL),('mtop_permit','MTOP Permit','formreports/mtop_permit.jasper',0,NULL),('vrs_assessment','VRS Assessment','formreports/assessment.jasper',0,NULL);
/*!40000 ALTER TABLE `sys_report_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `name` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `system` int(255) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('ADMIN','ADMIN',0),('APPROVER','APPROVER',0),('MASTER','MASTER',0),('PROCESSOR','PROCESSOR',0),('REPORT_EDITOR','REPORT EDITOR',0),('RULE_AUTHOR','RULE AUTHOR',0),('SYSTEM','SYSTEM',0),('WF_EDITOR','WF_EDITOR',0);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_permission`
--

DROP TABLE IF EXISTS `sys_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_permission` (
  `objid` varchar(100) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `object` varchar(25) DEFAULT NULL,
  `permission` varchar(25) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_sys_role_permission_role` (`role`) USING BTREE,
  CONSTRAINT `fk_sys_role_permission_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule`
--

DROP TABLE IF EXISTS `sys_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `rulegroup` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` longtext,
  `salience` int(11) DEFAULT NULL,
  `effectivefrom` date DEFAULT NULL,
  `effectiveto` date DEFAULT NULL,
  `dtfiled` datetime DEFAULT NULL,
  `user_objid` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `noloop` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `rulegroup` (`rulegroup`,`ruleset`) USING BTREE,
  KEY `ruleset` (`ruleset`) USING BTREE,
  CONSTRAINT `sys_rule_ibfk_1` FOREIGN KEY (`rulegroup`, `ruleset`) REFERENCES `sys_rulegroup` (`name`, `ruleset`),
  CONSTRAINT `sys_rule_ibfk_2` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule`
--

LOCK TABLES `sys_rule` WRITE;
/*!40000 ALTER TABLE `sys_rule` DISABLE KEYS */;
INSERT INTO `sys_rule` VALUES ('RUL-16f4340b:183cf6cd6d6:-7989','DEPLOYED','ASSERT_DUE_DATE','vrsbilling','initial','Assert Due Date',NULL,50000,NULL,NULL,'2022-10-13 13:09:01','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-2776e8bd:183b79e7692:-7f77','DEPLOYED','ADD_MTOP_PERMIT','vrsdoc','initial','Add MTOP Permit',NULL,1000,NULL,NULL,'2022-10-08 20:43:24','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-473e891:18373c51173:-76a2','DEPLOYED','MAYORS_PERMIT_FEE_MTOP','vrsbilling','compute-fees','MAYORS PERMIT FEE MTOP',NULL,50000,NULL,NULL,'2022-09-25 16:38:41','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-4ad97a99:183e41b37cb:-7b8c','APPROVED','MTOP_PENALTY','vrspayment','map-account','MTOP PENALTY ',NULL,50000,NULL,NULL,'2022-10-17 12:41:23','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-55011562:183ee2bb071:-7732','DEPLOYED','ADD_MTOP_FRANCHISE_PERMIT_IN_CAPTURE_MODE','vrsdoc','initial','Add Franchise MTOP Permit for capture txns',NULL,50000,NULL,NULL,'2022-10-19 11:46:52','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-8088163:183c9d69e6e:-7ef5','DEPLOYED','ADD_MTOP_FRANCHISE_PERMIT','vrsdoc','initial','Add Franchise MTOP Permit',NULL,50000,NULL,NULL,'2022-10-12 09:38:43','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-6116','APPROVED','MAYORS_PERMIT_MTOP','vrspayment','map-account','MAYORS PERMIT MTOP ',NULL,50000,NULL,NULL,'2022-10-12 15:34:30','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-621e','APPROVED','SIDECAR_PLATE_MTOP','vrspayment','map-account','SIDECAR PLATE MTOP ',NULL,50000,NULL,NULL,'2022-10-12 15:33:11','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-64b1','APPROVED','SUPERVISING_FEE_MTOP','vrspayment','map-account','SUPERVISING FEE MTOP ',NULL,50000,NULL,NULL,'2022-10-12 15:31:23','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-70be','DEPLOYED','PENALTY_MTOP','vrsbilling','compute-fees','PENALTY MTOP',NULL,1000,NULL,NULL,'2022-10-12 15:10:55','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-714d','DEPLOYED','SIDECAR_PLATE_MTOP','vrsbilling','compute-fees','SIDECAR PLATE MTOP',NULL,50000,NULL,NULL,'2022-10-12 15:07:16','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-7536','DEPLOYED','SUPERVISING_FEE_MTOP','vrsbilling','compute-fees','SUPERVISING FEE (MTOP)',NULL,50000,NULL,NULL,'2022-10-12 15:00:05','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL664a91a3:1837d695764:-6973','APPROVED','CREDIT_EXCESS_PAYMENT','vrspayment','apply-payment','Credit Excess Payment',NULL,1000,NULL,NULL,'2022-09-27 13:48:02','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL664a91a3:1837d695764:-6dd4','DEPLOYED','APPLY_BILLITEM_PAYMENT','vrspayment','apply-payment','Apply Bill Item Payment',NULL,50000,NULL,NULL,'2022-09-27 13:37:13','USR-1b82c604:14cc29913bb:-7fec','ADMIN',0),('RUL6da9fa81:183789e12da:-79b1','DEPLOYED','SET_BILL_DUE_DATE','vrsbilling','summary','Set Bill Due Date',NULL,50000,NULL,NULL,'2022-09-26 15:18:51','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1);
/*!40000 ALTER TABLE `sys_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_action`
--

DROP TABLE IF EXISTS `sys_rule_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_action` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `actiondef_objid` varchar(50) DEFAULT NULL,
  `actiondef_name` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  KEY `sys_rule_action_actiondef` (`actiondef_objid`) USING BTREE,
  CONSTRAINT `sys_rule_action_actiondef` FOREIGN KEY (`actiondef_objid`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `sys_rule_action_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_action`
--

LOCK TABLES `sys_rule_action` WRITE;
/*!40000 ALTER TABLE `sys_rule_action` DISABLE KEYS */;
INSERT INTO `sys_rule_action` VALUES ('RA-2e4aa27:183cafd1647:-7fb4','RUL1dbf685:183ca5a944b:-6116','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA-2e4aa27:183cafd1647:-7fba','RUL1dbf685:183ca5a944b:-621e','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA-2e4aa27:183cafd1647:-7fd5','RUL1dbf685:183ca5a944b:-714d','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-2e4aa27:183cafd1647:-7ff2','RUL1dbf685:183ca5a944b:-7536','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-3542a3e5:183c9d80d5a:-7ffd','RUL-8088163:183c9d69e6e:-7ef5','vrs.actions.AddVrsDoc','add-vrs-doc',0),('RA-3f3d3758:183e438f46e:-7ff4','RUL-4ad97a99:183e41b37cb:-7b8c','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1838b7ba:183ee58758d:-7ff0','RUL-55011562:183ee2bb071:-7732','vrs.actions.AddVrsDoc','add-vrs-doc',0),('RACT-16f4340b:183cf6cd6d6:-6d8f','RUL-16f4340b:183cf6cd6d6:-7989','treasury.actions.AssertVarDate','assert-var-date',0),('RACT-367aa019:183b7b25d2e:-7ead','RUL-2776e8bd:183b79e7692:-7f77','vrs.actions.AddVrsDoc','add-vrs-doc',0),('RACT1dbf685:183ca5a944b:-62ae','RUL1dbf685:183ca5a944b:-64b1','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT1dbf685:183ca5a944b:-6a7c','RUL1dbf685:183ca5a944b:-70be','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT664a91a3:1837d695764:-68ab','RUL664a91a3:1837d695764:-6973','treasury.actions.AddCreditBillItem','add-credit-billitem',0),('RACT664a91a3:1837d695764:-69e7','RUL664a91a3:1837d695764:-6dd4','treasury.actions.ApplyBillItemPayment','apply-billitem-payment',0),('RACT664a91a3:1837d695764:-70a2','RUL6da9fa81:183789e12da:-79b1','treasury.actions.SetBillValidityDate','set-bill-validity-date',0),('RACT6da9fa81:183789e12da:-77b0','RUL6da9fa81:183789e12da:-79b1','treasury.actions.SetBillDueDate','set-bill-due-date',0),('RACTe2a9717:183c087f805:-7c4b','RUL-473e891:18373c51173:-76a2','vrs.actions.AddVrsBillItem','add-vrs-billitem',0);
/*!40000 ALTER TABLE `sys_rule_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_action_param`
--

DROP TABLE IF EXISTS `sys_rule_action_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_action_param` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `actiondefparam_objid` varchar(100) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `booleanvalue` int(11) DEFAULT NULL,
  `var_objid` varchar(50) DEFAULT NULL,
  `var_name` varchar(50) DEFAULT NULL,
  `expr` longtext,
  `exprtype` varchar(25) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `obj_key` varchar(50) DEFAULT NULL,
  `obj_value` varchar(255) DEFAULT NULL,
  `listvalue` longtext,
  `lov` varchar(50) DEFAULT NULL,
  `rangeoption` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  KEY `var_objid` (`var_objid`) USING BTREE,
  KEY `sys_rule_action_param_actiondefparam` (`actiondefparam_objid`) USING BTREE,
  KEY `fk_sys_rule_action_param_objkey` (`obj_key`) USING BTREE,
  CONSTRAINT `sys_rule_action_param_actiondefparam` FOREIGN KEY (`actiondefparam_objid`) REFERENCES `sys_rule_actiondef_param` (`objid`),
  CONSTRAINT `sys_rule_action_param_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_action` (`objid`),
  CONSTRAINT `sys_rule_action_param_varobjid` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_action_param`
--

LOCK TABLES `sys_rule_action_param` WRITE;
/*!40000 ALTER TABLE `sys_rule_action_param` DISABLE KEYS */;
INSERT INTO `sys_rule_action_param` VALUES ('RAP-2e4aa27:183cafd1647:-7fb2','RA-2e4aa27:183cafd1647:-7fb4','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT1dbf685:183ca5a944b:-6582','MAYORS PERMIT (MTOP)',NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fb3','RA-2e4aa27:183cafd1647:-7fb4','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fb8','RA-2e4aa27:183cafd1647:-7fba','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT1dbf685:183ca5a944b:-6523','SIDECAR PLATE (MTOP)',NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fb9','RA-2e4aa27:183cafd1647:-7fba','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fd2','RA-2e4aa27:183cafd1647:-7fd5','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SIDECAR_PLATE_MTOP','SIDECAR PLATE (MTOP)',NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fd3','RA-2e4aa27:183cafd1647:-7fd5','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCC-2e4aa27:183cafd1647:-7fd6','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fd4','RA-2e4aa27:183cafd1647:-7fd5','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'50','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fef','RA-2e4aa27:183cafd1647:-7ff2','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'150','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7ff0','RA-2e4aa27:183cafd1647:-7ff2','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCC-2e4aa27:183cafd1647:-7ff6','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7ff1','RA-2e4aa27:183cafd1647:-7ff2','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUPERVISING_FEE_MTOP','SUPERVISING FEE (MTOP)',NULL,NULL,NULL),('RAP-3542a3e5:183c9d80d5a:-7ffc','RA-3542a3e5:183c9d80d5a:-7ffd','vrs.actions.AddVrsDoc.doctypeid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MTOP_FRANCHISE_PERMIT','MTOP FRANCHISE PERMIT',NULL,NULL,NULL),('RAP-3f3d3758:183e438f46e:-7ff1','RA-3f3d3758:183e438f46e:-7ff4','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-3f3d3758:183e438f46e:-7ff2','RA-3f3d3758:183e438f46e:-7ff4','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-3f3d3758:183e438f46e:-7ff3','RA-3f3d3758:183e438f46e:-7ff4','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT-4ad97a99:183e41b37cb:-7a2f','MTOP PENALTY FEE',NULL,NULL,NULL),('RAP1838b7ba:183ee58758d:-7fef','RA1838b7ba:183ee58758d:-7ff0','vrs.actions.AddVrsDoc.doctypeid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MTOP_FRANCHISE_PERMIT','MTOP FRANCHISE PERMIT',NULL,NULL,NULL),('RULACT-16f4340b:183cf6cd6d6:-6d1e','RACT-16f4340b:183cf6cd6d6:-6d8f','treasury.actions.AssertVarDate.tag',NULL,NULL,NULL,NULL,'\'duedate\'','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-16f4340b:183cf6cd6d6:-6d7d','RACT-16f4340b:183cf6cd6d6:-6d8f','treasury.actions.AssertVarDate.date',NULL,NULL,NULL,NULL,'@DATE( YEAR , 1,  20 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-1c14a7bd:183df6ae47b:-7b4a','RACT1dbf685:183ca5a944b:-6a7c','vrs.actions.AddVrsBillItem.duedate',NULL,NULL,NULL,NULL,'@DAYADD( DUEDATE, 1 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-367aa019:183b7b25d2e:-7ea1','RACT-367aa019:183b7b25d2e:-7ead','vrs.actions.AddVrsDoc.doctypeid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MTOP_PERMIT','MTOP PERMIT',NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-5f65','RACT1dbf685:183ca5a944b:-62ae','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-5ff2','RA-2e4aa27:183cafd1647:-7fba','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-6070','RA-2e4aa27:183cafd1647:-7fb4','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-624e','RACT1dbf685:183ca5a944b:-62ae','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-628a','RACT1dbf685:183ca5a944b:-62ae','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT1dbf685:183ca5a944b:-65da','SUPERVISING FEE (MTOP)',NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-6950','RACT1dbf685:183ca5a944b:-6a7c','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST1dbf685:183ca5a944b:-69b0','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-6a2c','RACT1dbf685:183ca5a944b:-6a7c','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'100','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-6a5e','RACT1dbf685:183ca5a944b:-6a7c','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PENALTY_MTOP','PENALTY (MTOP)',NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-60a0','RACT664a91a3:1837d695764:-70a2','treasury.actions.SetBillValidityDate.bill',NULL,NULL,'RCOND6da9fa81:183789e12da:-795b','BILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-686a','RACT664a91a3:1837d695764:-68ab','treasury.actions.AddCreditBillItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-6893','RACT664a91a3:1837d695764:-68ab','treasury.actions.AddCreditBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ADVANCE_PAYMENT','ADVANCE PAYMENT (MTOP)',NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-69bd','RACT664a91a3:1837d695764:-69e7','treasury.actions.ApplyBillItemPayment.payment',NULL,NULL,'RCOND664a91a3:1837d695764:-6b22','PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-69cf','RACT664a91a3:1837d695764:-69e7','treasury.actions.ApplyBillItemPayment.billitem',NULL,NULL,'RCOND664a91a3:1837d695764:-6a9d','BILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-708a','RACT664a91a3:1837d695764:-70a2','treasury.actions.SetBillValidityDate.date',NULL,NULL,NULL,NULL,'@IIF(  TDATE < VDATE ,  VDATE  ,   @DATE(  YR, 12 , 31 ) )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT6da9fa81:183789e12da:-777a','RACT6da9fa81:183789e12da:-77b0','treasury.actions.SetBillDueDate.date',NULL,NULL,NULL,NULL,'VDATE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT6da9fa81:183789e12da:-7792','RACT6da9fa81:183789e12da:-77b0','treasury.actions.SetBillDueDate.bill',NULL,NULL,'RCOND6da9fa81:183789e12da:-795b','BILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTe2a9717:183c087f805:-7bce','RACTe2a9717:183c087f805:-7c4b','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'200','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACTe2a9717:183c087f805:-7bf9','RACTe2a9717:183c087f805:-7c4b','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONSTe2a9717:183c087f805:-7e22','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACTe2a9717:183c087f805:-7c2d','RACTe2a9717:183c087f805:-7c4b','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MAYORS_PERMIT_MTOP','MAYORS PERMIT (MTOP)',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_rule_action_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_actiondef`
--

DROP TABLE IF EXISTS `sys_rule_actiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_actiondef` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `actionname` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `actionclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_actiondef`
--

LOCK TABLES `sys_rule_actiondef` WRITE;
/*!40000 ALTER TABLE `sys_rule_actiondef` DISABLE KEYS */;
INSERT INTO `sys_rule_actiondef` VALUES ('enterprise.actions.AddRequirement','add-requirement','Add Requirement',2,'add-requirement','ENTERPRISE','enterprise.actions.AddRequirement'),('enterprise.actions.PrintTest','print-test','Print Test',1,'print-test','ENTERPRISE','enterprise.actions.PrintTest'),('enterprise.actions.ThrowException','throw-exeception','Throw Exception',1,'throw-exeception','ENTERPRISE','enterprise.actions.ThrowException'),('treasury.actions.AddCashReceiptItem','add-cashreceipt-item','Add Cash Receipt Item',1,'add-cashreceipt-item','TREASURY','treasury.actions.AddCashReceiptItem'),('treasury.actions.AddCreditBillItem','add-credit-billitem','Add Credit Bill Item',2,'add-credit-billitem','TREASURY','treasury.actions.AddCreditBillItem'),('treasury.actions.AddDiscountItem','add-discount-item','Add Discount',3,'add-discount-item','TREASURY','treasury.actions.AddDiscountItem'),('treasury.actions.AddInterestItem','add-interest-item','Add Interest',3,'add-interest-item','TREASURY','treasury.actions.AddInterestItem'),('treasury.actions.AddQtrBillItem','add-qtr-billitem','Add Qtr Bill Item',2,'add-qtr-billitem','TREASURY','treasury.actions.AddQtrBillItem'),('treasury.actions.AddSurchargeItem','add-surcharge-item','Add Surcharge',3,'add-surcharge-item','TREASURY','treasury.actions.AddSurchargeItem'),('treasury.actions.AddVarInteger','add-var-integer','Add Var Integer',1,'add-var-integer','TREASURY','treasury.actions.AddVarInteger'),('treasury.actions.ApplyBillItemCredit','apply-billitem-credit','Apply Credit Payment',1,'apply-billitem-credit','TREASURY','treasury.actions.ApplyBillItemCredit'),('treasury.actions.ApplyBillItemPayment','apply-billitem-payment','Apply Bill Item Payment',1,'apply-billitem-payment','TREASURY','treasury.actions.ApplyBillItemPayment'),('treasury.actions.ApplyPayment','apply-payment','Apply Payment',5,'apply-payment','TREASURY','treasury.actions.ApplyPayment'),('treasury.actions.AssertVarDate','assert-var-date','Assert Var Date',1,'assert-var-date','TREASURY','treasury.actions.AssertVarDate'),('treasury.actions.RemoveBillItem','remove-billitem','Remove Bill Item',10,'remove-billitem','TREASURY','treasury.actions.RemoveBillItem'),('treasury.actions.SetBillDueDate','set-bill-due-date','Set Bill Due date',1,'set-bill-due-date','TREASURY','treasury.actions.SetBillDueDate'),('treasury.actions.SetBillItemAccount','set-billitem-account','Set Bill Item Account',4,'set-billitem-account','TREASURY','treasury.actions.SetBillItemAccount'),('treasury.actions.SetBillItemDueDate','set-billitem-duedate','Set Bill Item Due date',1,'set-billitem-duedate','TREASURY','treasury.actions.SetBillItemDueDate'),('treasury.actions.SetBillItemProperty','set-billitem-property','Set BillItem Property Value',10,'set-billitem-property','TREASURY','treasury.actions.SetBillItemProperty'),('treasury.actions.SetBillValidityDate','set-bill-validity-date','Set Bill Validity date',1,'set-bill-validity-date','TREASURY','treasury.actions.SetBillValidityDate'),('treasury.actions.SetCashReceiptItemRemarks','set-cashreceipt-item-remarks','Set Cash Receipt Item Remarks',1,'set-cashreceipt-item-remarks','TREASURY','treasury.actions.SetCashReceiptItemRemarks'),('treasury.actions.SupersedeBillItem','supersede-billitem','Supersede Bill Item',1,'supersede-billitem','TREASURY','treasury.actions.SupersedeBillItem'),('treasury.actions.UpdateBillItemAmount','update-billitem-amount','Update Bill Item Amount',1,'update-billitem-amount','TREASURY','treasury.actions.UpdateBillItemAmount'),('vrs.actions.AddVrsBillItem','add-vrs-billitem','Add VRS Bill Item',1,'add-vrs-billitem','VRS','vrs.actions.AddVrsBillItem'),('vrs.actions.AddVrsDoc','add-vrs-doc','Add Vehicle Doc',1,'add-vrs-doc','VRS','vrs.actions.AddVrsDoc');
/*!40000 ALTER TABLE `sys_rule_actiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_actiondef_param`
--

DROP TABLE IF EXISTS `sys_rule_actiondef_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_actiondef_param` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `vardatatype` varchar(50) DEFAULT NULL,
  `lovname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  CONSTRAINT `sys_rule_actiondef_param_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_actiondef` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_actiondef_param`
--

LOCK TABLES `sys_rule_actiondef_param` WRITE;
/*!40000 ALTER TABLE `sys_rule_actiondef_param` DISABLE KEYS */;
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.message','enterprise.actions.AddRequirement','message',2,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('enterprise.actions.AddRequirement.reqtype','enterprise.actions.AddRequirement','reqtype',1,'Requirement Type',NULL,'lookup','sys_requirement_type:lookup','code','title','string',NULL),('enterprise.actions.AddRequirement.required','enterprise.actions.AddRequirement','required',4,'Required','boolean','boolean',NULL,NULL,NULL,'boolean',NULL),('enterprise.actions.AddRequirement.sortorder','enterprise.actions.AddRequirement','sortorder',3,'Sort Order','string','string',NULL,NULL,NULL,'string',NULL),('enterprise.actions.PrintTest.message','enterprise.actions.PrintTest','message',1,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('enterprise.actions.ThrowException.msg','enterprise.actions.ThrowException','msg',1,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.account','treasury.actions.AddCashReceiptItem','account',1,'Receipt Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.AddCashReceiptItem.amount','treasury.actions.AddCashReceiptItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.groupid','treasury.actions.AddCashReceiptItem','groupid',3,'Group ID',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.remarks','treasury.actions.AddCashReceiptItem','remarks',4,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.sortorder','treasury.actions.AddCashReceiptItem','sortorder',5,'Sort Order',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCreditBillItem.account','treasury.actions.AddCreditBillItem','account',1,'Account',NULL,'lookup','itemaccount:credit:lookup','objid','title',NULL,NULL),('treasury.actions.AddCreditBillItem.amount','treasury.actions.AddCreditBillItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCreditBillItem.billitem','treasury.actions.AddCreditBillItem','billitem',3,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddDiscountItem.account','treasury.actions.AddDiscountItem','account',4,'Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.AddDiscountItem.amount','treasury.actions.AddDiscountItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddDiscountItem.billcode','treasury.actions.AddDiscountItem','billcode',3,'Billcode',NULL,'lookup','market_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.AddDiscountItem.billitem','treasury.actions.AddDiscountItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddInterestItem.account','treasury.actions.AddInterestItem','account',3,'Account',NULL,'lookup','itemaccount:interest:lookup','objid','title',NULL,NULL),('treasury.actions.AddInterestItem.amount','treasury.actions.AddInterestItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddInterestItem.billdate','treasury.actions.AddInterestItem','billdate',4,'Bill Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddInterestItem.billitem','treasury.actions.AddInterestItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddQtrBillItem.billitem','treasury.actions.AddQtrBillItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'eboss.facts.BusinessBillItem',NULL),('treasury.actions.AddQtrBillItem.duedate','treasury.actions.AddQtrBillItem','duedate',4,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddQtrBillItem.qtr','treasury.actions.AddQtrBillItem','qtr',2,'Qtr',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddQtrBillItem.startdate','treasury.actions.AddQtrBillItem','startdate',3,'Start Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.account','treasury.actions.AddSurchargeItem','account',3,'Account',NULL,'lookup','itemaccount:surcharge:lookup','objid','title',NULL,NULL),('treasury.actions.AddSurchargeItem.amount','treasury.actions.AddSurchargeItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.billdate','treasury.actions.AddSurchargeItem','billdate',4,'Bill Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.billitem','treasury.actions.AddSurchargeItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddVarInteger.tag','treasury.actions.AddVarInteger','tag',2,'Tag','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddVarInteger.value','treasury.actions.AddVarInteger','value',1,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.ApplyBillItemCredit.billitem','treasury.actions.ApplyBillItemCredit','billitem',2,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.ApplyBillItemCredit.creditbillitem','treasury.actions.ApplyBillItemCredit','creditbillitem',1,'Credit Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.CreditBillItem',NULL),('treasury.actions.ApplyBillItemPayment.billitem','treasury.actions.ApplyBillItemPayment','billitem',2,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.ApplyBillItemPayment.payment','treasury.actions.ApplyBillItemPayment','payment',1,'Payment',NULL,'var',NULL,NULL,NULL,'treasury.facts.Payment',NULL),('treasury.actions.ApplyPayment.payment','treasury.actions.ApplyPayment','payment',1,'Payment',NULL,'var',NULL,NULL,NULL,'treasury.facts.Payment',NULL),('treasury.actions.AssertVarDate.date','treasury.actions.AssertVarDate','date',1,'Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AssertVarDate.tag','treasury.actions.AssertVarDate','tag',2,'Tag',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.RemoveBillItem.billitem','treasury.actions.RemoveBillItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillDueDate.bill','treasury.actions.SetBillDueDate','bill',1,'Bill',NULL,'var',NULL,NULL,NULL,'treasury.facts.Bill',NULL),('treasury.actions.SetBillDueDate.date','treasury.actions.SetBillDueDate','date',2,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetBillItemAccount.account','treasury.actions.SetBillItemAccount','account',2,'Account',NULL,'lookup','itemaccount:lookup','objid','title',NULL,NULL),('treasury.actions.SetBillItemAccount.billcode','treasury.actions.SetBillItemAccount','billcode',3,'Billcode',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.SetBillItemAccount.billitem','treasury.actions.SetBillItemAccount','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemDueDate.billitem','treasury.actions.SetBillItemDueDate','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemDueDate.duedate','treasury.actions.SetBillItemDueDate','duedate',2,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetBillItemProperty.billitem','treasury.actions.SetBillItemProperty','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.BillItem',NULL),('treasury.actions.SetBillItemProperty.fieldname','treasury.actions.SetBillItemProperty','fieldname',2,'Property Field Name',NULL,'fieldlist',NULL,'billitem',NULL,NULL,NULL),('treasury.actions.SetBillItemProperty.value','treasury.actions.SetBillItemProperty','value',3,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetBillValidityDate.bill','treasury.actions.SetBillValidityDate','bill',1,'Bill',NULL,'var',NULL,NULL,NULL,'treasury.facts.Bill',NULL),('treasury.actions.SetBillValidityDate.date','treasury.actions.SetBillValidityDate','date',2,'Validity Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetCashReceiptItemRemarks.receiptitem','treasury.actions.SetCashReceiptItemRemarks','receiptitem',1,'Receipt Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.CashReceiptItem',NULL),('treasury.actions.SetCashReceiptItemRemarks.remarks','treasury.actions.SetCashReceiptItemRemarks','remarks',2,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetCashReceiptItemRemarks.type','treasury.actions.SetCashReceiptItemRemarks','type',3,'Type',NULL,'lov',NULL,NULL,NULL,NULL,'UPDATE_BILLITEM_TYPE'),('treasury.actions.SupersedeBillItem.billitem','treasury.actions.SupersedeBillItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SupersedeBillItem.supersederitem','treasury.actions.SupersedeBillItem','supersederitem',2,'Superseder BillItem',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.UpdateBillItemAmount.amount','treasury.actions.UpdateBillItemAmount','amount',3,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.UpdateBillItemAmount.billitem','treasury.actions.UpdateBillItemAmount','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.UpdateBillItemAmount.type','treasury.actions.UpdateBillItemAmount','type',2,'Type',NULL,'lov',NULL,NULL,NULL,NULL,'UPDATE_BILLITEM_TYPE'),('vrs.actions.AddVrsBillItem.account','vrs.actions.AddVrsBillItem','account',1,'Account',NULL,'lookup','itemaccount:lookup','objid','title','string',NULL),('vrs.actions.AddVrsBillItem.amount','vrs.actions.AddVrsBillItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.AddVrsBillItem.duedate','vrs.actions.AddVrsBillItem','duedate',5,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.AddVrsBillItem.remarks','vrs.actions.AddVrsBillItem','remarks',3,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.AddVrsBillItem.year','vrs.actions.AddVrsBillItem','year',4,'Year',NULL,'var',NULL,NULL,NULL,'integer',NULL),('vrs.actions.AddVrsDoc.doctypeid','vrs.actions.AddVrsDoc','doctypeid',1,'Doc Type',NULL,'lookup','vrs_doctype:all:lookup','objid','title','string',NULL);
/*!40000 ALTER TABLE `sys_rule_actiondef_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition`
--

DROP TABLE IF EXISTS `sys_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `fact_name` varchar(50) DEFAULT NULL,
  `fact_objid` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `ruletext` longtext,
  `displaytext` longtext,
  `dynamic_datatype` varchar(50) DEFAULT NULL,
  `dynamic_key` varchar(50) DEFAULT NULL,
  `dynamic_value` varchar(50) DEFAULT NULL,
  `notexist` int(11) NOT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fact_objid` (`fact_objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  CONSTRAINT `sys_rule_condition_fact` FOREIGN KEY (`fact_objid`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `sys_rule_condition_ibfk_1` FOREIGN KEY (`fact_objid`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `sys_rule_condition_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition`
--

LOCK TABLES `sys_rule_condition` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition` DISABLE KEYS */;
INSERT INTO `sys_rule_condition` VALUES ('RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC-2e4aa27:183cafd1647:-7fbd','RUL1dbf685:183ca5a944b:-621e','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC-2e4aa27:183cafd1647:-7fd7','RUL1dbf685:183ca5a944b:-714d','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC-2e4aa27:183cafd1647:-7fda','RUL1dbf685:183ca5a944b:-714d','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RC-2e4aa27:183cafd1647:-7ff5','RUL1dbf685:183ca5a944b:-7536','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RC-2e4aa27:183cafd1647:-7ff7','RUL1dbf685:183ca5a944b:-7536','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC-3542a3e5:183c9d80d5a:-8000','RUL-8088163:183c9d69e6e:-7ef5','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-3f3d3758:183e438f46e:-7ff7','RUL-4ad97a99:183e41b37cb:-7b8c','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1838b7ba:183ee58758d:-7ff3','RUL-55011562:183ee2bb071:-7732','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND-16f4340b:183cf6cd6d6:-6bf0','RUL1dbf685:183ca5a944b:-70be','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND-16f4340b:183cf6cd6d6:-758c','RUL-16f4340b:183cf6cd6d6:-7989','vrs.facts.VrsAccount','vrs.facts.VrsAccount',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-16f4340b:183cf6cd6d6:-7842','RUL-16f4340b:183cf6cd6d6:-7989','treasury.facts.VarDate','treasury.facts.VarDate','',0,NULL,NULL,NULL,NULL,NULL,1),('RCOND-181455fd:183df531a10:-78ca','RUL6da9fa81:183789e12da:-79b1','vrs.facts.VrsAccount','vrs.facts.VrsAccount',NULL,3,NULL,NULL,NULL,NULL,NULL,0),('RCOND-181455fd:183df531a10:-7d8d','RUL6da9fa81:183789e12da:-79b1','treasury.facts.TransactionDate','treasury.facts.TransactionDate',NULL,3,NULL,NULL,NULL,NULL,NULL,0),('RCOND-181455fd:183df531a10:-7eb7','RUL6da9fa81:183789e12da:-79b1','treasury.facts.VarDate','treasury.facts.VarDate',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCOND-2776e8bd:183b79e7692:-7f4f','RUL-2776e8bd:183b79e7692:-7f77','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND1dbf685:183ca5a944b:-6463','RUL1dbf685:183ca5a944b:-64b1','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND1dbf685:183ca5a944b:-69c0','RUL1dbf685:183ca5a944b:-70be','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCOND1dbf685:183ca5a944b:-6bf6','RUL1dbf685:183ca5a944b:-70be','treasury.facts.TransactionDate','treasury.facts.TransactionDate',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND664a91a3:1837d695764:-691f','RUL664a91a3:1837d695764:-6973','treasury.facts.Payment','treasury.facts.Payment','PMT',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND664a91a3:1837d695764:-6a9d','RUL664a91a3:1837d695764:-6dd4','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND664a91a3:1837d695764:-6b22','RUL664a91a3:1837d695764:-6dd4','treasury.facts.Payment','treasury.facts.Payment','PMT',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND6da9fa81:183789e12da:-795b','RUL6da9fa81:183789e12da:-79b1','treasury.facts.Bill','treasury.facts.Bill','BILL',0,NULL,NULL,NULL,NULL,NULL,0),('RCONDe2a9717:183c087f805:-7d99','RUL-473e891:18373c51173:-76a2','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCONDe2a9717:183c087f805:-7e32','RUL-473e891:18373c51173:-76a2','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,1,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition_constraint`
--

DROP TABLE IF EXISTS `sys_rule_condition_constraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition_constraint` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `field_objid` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `operator_caption` varchar(50) DEFAULT NULL,
  `operator_symbol` varchar(50) DEFAULT NULL,
  `usevar` int(11) DEFAULT NULL,
  `var_objid` varchar(50) DEFAULT NULL,
  `var_name` varchar(50) DEFAULT NULL,
  `decimalvalue` decimal(16,2) DEFAULT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `listvalue` longtext,
  `datevalue` date DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  KEY `var_objid` (`var_objid`) USING BTREE,
  KEY `sys_rule_condition_constraint_fact_field` (`field_objid`) USING BTREE,
  CONSTRAINT `sys_rule_condition_constraint_fact_field` FOREIGN KEY (`field_objid`) REFERENCES `sys_rule_fact_field` (`objid`),
  CONSTRAINT `sys_rule_condition_constraint_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`),
  CONSTRAINT `sys_rule_condition_constraint_ibfk_2` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition_constraint`
--

LOCK TABLES `sys_rule_condition_constraint` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition_constraint` DISABLE KEYS */;
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-2e4aa27:183cafd1647:-7fb5','RC-2e4aa27:183cafd1647:-7fb7','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"MTOP_MAYORS_PERMIT\",value:\"MAYORS PERMIT (MTOP)\"]]',NULL,0),('RCC-2e4aa27:183cafd1647:-7fb6','RC-2e4aa27:183cafd1647:-7fb7','vrs.facts.VrsBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC-2e4aa27:183cafd1647:-7fbb','RC-2e4aa27:183cafd1647:-7fbd','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"SIDECAR_PLATE\",value:\"SIDECAR PLATE\"]]',NULL,0),('RCC-2e4aa27:183cafd1647:-7fbc','RC-2e4aa27:183cafd1647:-7fbd','vrs.facts.VrsBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC-2e4aa27:183cafd1647:-7fd6','RC-2e4aa27:183cafd1647:-7fd7','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCC-2e4aa27:183cafd1647:-7fd8','RC-2e4aa27:183cafd1647:-7fda','vrs.facts.VrsTxn.vehicletypeid','vehicletypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"mtop\",value:\"MTOP\"]]',NULL,0),('RCC-2e4aa27:183cafd1647:-7fd9','RC-2e4aa27:183cafd1647:-7fda','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"NEW\",value:\"New Vehicle\"],[key:\"RENEWAL\",value:\"Renewal\"]]',NULL,1),('RCC-2e4aa27:183cafd1647:-7ff3','RC-2e4aa27:183cafd1647:-7ff5','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"NEW\",value:\"New Vehicle\"],[key:\"RENEWAL\",value:\"Renewal\"]]',NULL,1),('RCC-2e4aa27:183cafd1647:-7ff4','RC-2e4aa27:183cafd1647:-7ff5','vrs.facts.VrsTxn.vehicletypeid','vehicletypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"mtop\",value:\"MTOP\"]]',NULL,0),('RCC-2e4aa27:183cafd1647:-7ff6','RC-2e4aa27:183cafd1647:-7ff7','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCC-3542a3e5:183c9d80d5a:-7ffe','RC-3542a3e5:183c9d80d5a:-8000','vrs.facts.VrsTxn.vehicletypeid','vehicletypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"mtop\",value:\"MTOP\"]]',NULL,0),('RCC-3542a3e5:183c9d80d5a:-7fff','RC-3542a3e5:183c9d80d5a:-8000','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"FRANCHISE_RENEWAL\",value:\"Franchise Renewal\"],[key:\"NEW\",value:\"New Vehicle\"]]',NULL,1),('RCC-3f3d3758:183e438f46e:-7ff5','RC-3f3d3758:183e438f46e:-7ff7','vrs.facts.VrsBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC-3f3d3758:183e438f46e:-7ff6','RC-3f3d3758:183e438f46e:-7ff7','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"PENALTY_MTOP\",value:\"PENALTY (MTOP)\"]]',NULL,0),('RCC1838b7ba:183ee58758d:-7ff2','RC1838b7ba:183ee58758d:-7ff3','vrs.facts.VrsTxn.vehicletypeid','vehicletypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"mtop\",value:\"MTOP\"]]',NULL,0),('RCONST-16f4340b:183cf6cd6d6:-6aa8','RCOND1dbf685:183ca5a944b:-6bf6','treasury.facts.TransactionDate.date','date','TDATE','after','>',1,'RCONST-16f4340b:183cf6cd6d6:-6bda','DUEDATE',NULL,NULL,NULL,NULL,NULL,0),('RCONST-16f4340b:183cf6cd6d6:-6bda','RCOND-16f4340b:183cf6cd6d6:-6bf0','treasury.facts.VarDate.date','date','DUEDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-16f4340b:183cf6cd6d6:-754d','RCOND-16f4340b:183cf6cd6d6:-758c','vrs.facts.VrsAccount.year','year','YEAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-16f4340b:183cf6cd6d6:-77bc','RCOND-16f4340b:183cf6cd6d6:-7842','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'duedate',NULL,NULL,0),('RCONST-181455fd:183df531a10:-788c','RCOND-181455fd:183df531a10:-78ca','vrs.facts.VrsAccount.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-181455fd:183df531a10:-7d5f','RCOND-181455fd:183df531a10:-7d8d','treasury.facts.TransactionDate.date','date','TDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-181455fd:183df531a10:-7e70','RCOND-181455fd:183df531a10:-7eb7','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'duedate',NULL,NULL,1),('RCONST-181455fd:183df531a10:-7ea1','RCOND-181455fd:183df531a10:-7eb7','treasury.facts.VarDate.date','date','VDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-2776e8bd:183b79e7692:-7eec','RCOND-2776e8bd:183b79e7692:-7f4f','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"NEW\",value:\"New Vehicle\"],[key:\"RENEWAL\",value:\"Renewal\"]]',NULL,1),('RCONST-2776e8bd:183b79e7692:-7f2c','RCOND-2776e8bd:183b79e7692:-7f4f','vrs.facts.VrsTxn.vehicletypeid','vehicletypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"mtop\",value:\"MTOP\"]]',NULL,0),('RCONST-37f036c9:183eec06ab9:-735d','RC-3f3d3758:183e438f46e:-7ff7','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST-37f036c9:183eec06ab9:-74d7','RCOND1dbf685:183ca5a944b:-6463','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST-37f036c9:183eec06ab9:-7673','RC-2e4aa27:183cafd1647:-7fbd','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST-37f036c9:183eec06ab9:-77ed','RC-2e4aa27:183cafd1647:-7fb7','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST-55011562:183ee2bb071:-7562','RC1838b7ba:183ee58758d:-7ff3','vrs.facts.VrsTxn.txnmode','txnmode',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[\"CAPTURE\"]',NULL,1),('RCONST-55011562:183ee2bb071:-7692','RC-3542a3e5:183c9d80d5a:-8000','vrs.facts.VrsTxn.txnmode','txnmode',NULL,'not exist in','not matches',NULL,NULL,NULL,NULL,NULL,NULL,'[\"CAPTURE\"]',NULL,2),('RCONST1dbf685:183ca5a944b:-6323','RCOND1dbf685:183ca5a944b:-6463','vrs.facts.VrsBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST1dbf685:183ca5a944b:-63fd','RCOND1dbf685:183ca5a944b:-6463','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"SUPERVISING_FEE\",value:\"SUPERVISING FEE\"]]',NULL,0),('RCONST1dbf685:183ca5a944b:-69b0','RCOND1dbf685:183ca5a944b:-69c0','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST664a91a3:1837d695764:-6909','RCOND664a91a3:1837d695764:-691f','treasury.facts.Payment.amount','amount','AMT','greater than','>',NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,0),('RCONST664a91a3:1837d695764:-6a31','RCOND664a91a3:1837d695764:-6a9d','vrs.facts.VrsBillItem.paid','paid',NULL,'not true','== false',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST664a91a3:1837d695764:-6b0c','RCOND664a91a3:1837d695764:-6b22','treasury.facts.Payment.amount','amount',NULL,'greater than','>',NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,0),('RCONSTe2a9717:183c087f805:-7d36','RCONDe2a9717:183c087f805:-7d99','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"NEW\",value:\"New Vehicle\"],[key:\"RENEWAL\",value:\"Renewal\"]]',NULL,1),('RCONSTe2a9717:183c087f805:-7d76','RCONDe2a9717:183c087f805:-7d99','vrs.facts.VrsTxn.vehicletypeid','vehicletypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"mtop\",value:\"MTOP\"]]',NULL,0),('RCONSTe2a9717:183c087f805:-7e22','RCONDe2a9717:183c087f805:-7e32','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_rule_condition_constraint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition_var`
--

DROP TABLE IF EXISTS `sys_rule_condition_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition_var` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `ruleid` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  CONSTRAINT `sys_rule_condition_var_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition_var`
--

LOCK TABLES `sys_rule_condition_var` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition_var` DISABLE KEYS */;
INSERT INTO `sys_rule_condition_var` VALUES ('RC-2e4aa27:183cafd1647:-7fb7','RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','BILLITEM','vrs.facts.VrsBillItem',0),('RC-2e4aa27:183cafd1647:-7fbd','RC-2e4aa27:183cafd1647:-7fbd','RUL1dbf685:183ca5a944b:-621e','BILLITEM','vrs.facts.VrsBillItem',0),('RC-3f3d3758:183e438f46e:-7ff7','RC-3f3d3758:183e438f46e:-7ff7','RUL-4ad97a99:183e41b37cb:-7b8c','BILLITEM','vrs.facts.VrsBillItem',0),('RCC-2e4aa27:183cafd1647:-7fb6','RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','AMT','decimal',1),('RCC-2e4aa27:183cafd1647:-7fbc','RC-2e4aa27:183cafd1647:-7fbd','RUL1dbf685:183ca5a944b:-621e','AMT','decimal',1),('RCC-2e4aa27:183cafd1647:-7fd6','RC-2e4aa27:183cafd1647:-7fd7','RUL1dbf685:183ca5a944b:-714d','YR','integer',0),('RCC-2e4aa27:183cafd1647:-7ff6','RC-2e4aa27:183cafd1647:-7ff7','RUL1dbf685:183ca5a944b:-7536','YR','integer',0),('RCC-3f3d3758:183e438f46e:-7ff5','RC-3f3d3758:183e438f46e:-7ff7','RUL-4ad97a99:183e41b37cb:-7b8c','AMT','decimal',1),('RCOND1dbf685:183ca5a944b:-6463','RCOND1dbf685:183ca5a944b:-6463','RUL1dbf685:183ca5a944b:-64b1','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND664a91a3:1837d695764:-691f','RCOND664a91a3:1837d695764:-691f','RUL664a91a3:1837d695764:-6973','PMT','treasury.facts.Payment',0),('RCOND664a91a3:1837d695764:-6a9d','RCOND664a91a3:1837d695764:-6a9d','RUL664a91a3:1837d695764:-6dd4','BILLITEM','vrs.facts.VrsBillItem',1),('RCOND664a91a3:1837d695764:-6b22','RCOND664a91a3:1837d695764:-6b22','RUL664a91a3:1837d695764:-6dd4','PMT','treasury.facts.Payment',0),('RCOND6da9fa81:183789e12da:-795b','RCOND6da9fa81:183789e12da:-795b','RUL6da9fa81:183789e12da:-79b1','BILL','treasury.facts.Bill',0),('RCONST-16f4340b:183cf6cd6d6:-6aa8','RCOND1dbf685:183ca5a944b:-6bf6','RUL1dbf685:183ca5a944b:-70be','TDATE','date',0),('RCONST-16f4340b:183cf6cd6d6:-6bda','RCOND-16f4340b:183cf6cd6d6:-6bf0','RUL1dbf685:183ca5a944b:-70be','DUEDATE','date',0),('RCONST-16f4340b:183cf6cd6d6:-754d','RCOND-16f4340b:183cf6cd6d6:-758c','RUL-16f4340b:183cf6cd6d6:-7989','YEAR','integer',0),('RCONST-181455fd:183df531a10:-788c','RCOND-181455fd:183df531a10:-78ca','RUL6da9fa81:183789e12da:-79b1','YR','integer',0),('RCONST-181455fd:183df531a10:-7d5f','RCOND-181455fd:183df531a10:-7d8d','RUL6da9fa81:183789e12da:-79b1','TDATE','date',0),('RCONST-181455fd:183df531a10:-7ea1','RCOND-181455fd:183df531a10:-7eb7','RUL6da9fa81:183789e12da:-79b1','VDATE','date',0),('RCONST-37f036c9:183eec06ab9:-735d','RC-3f3d3758:183e438f46e:-7ff7','RUL-4ad97a99:183e41b37cb:-7b8c','CODE','string',2),('RCONST-37f036c9:183eec06ab9:-74d7','RCOND1dbf685:183ca5a944b:-6463','RUL1dbf685:183ca5a944b:-64b1','CODE','string',2),('RCONST-37f036c9:183eec06ab9:-7673','RC-2e4aa27:183cafd1647:-7fbd','RUL1dbf685:183ca5a944b:-621e','CODE','string',2),('RCONST-37f036c9:183eec06ab9:-77ed','RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','CODE','string',2),('RCONST1dbf685:183ca5a944b:-6323','RCOND1dbf685:183ca5a944b:-6463','RUL1dbf685:183ca5a944b:-64b1','AMT','decimal',1),('RCONST1dbf685:183ca5a944b:-69b0','RCOND1dbf685:183ca5a944b:-69c0','RUL1dbf685:183ca5a944b:-70be','YR','integer',0),('RCONST664a91a3:1837d695764:-6909','RCOND664a91a3:1837d695764:-691f','RUL664a91a3:1837d695764:-6973','AMT','decimal',0),('RCONSTe2a9717:183c087f805:-7e22','RCONDe2a9717:183c087f805:-7e32','RUL-473e891:18373c51173:-76a2','YR','integer',0);
/*!40000 ALTER TABLE `sys_rule_condition_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_deployed`
--

DROP TABLE IF EXISTS `sys_rule_deployed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_deployed` (
  `objid` varchar(50) NOT NULL,
  `ruletext` longtext,
  PRIMARY KEY (`objid`) USING BTREE,
  CONSTRAINT `sys_rule_deployed_ibfk_1` FOREIGN KEY (`objid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_deployed`
--

LOCK TABLES `sys_rule_deployed` WRITE;
/*!40000 ALTER TABLE `sys_rule_deployed` DISABLE KEYS */;
INSERT INTO `sys_rule_deployed` VALUES ('RUL-16f4340b:183cf6cd6d6:-7989','\npackage vrsbilling.ASSERT_DUE_DATE;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ASSERT_DUE_DATE\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		not ( treasury.facts.VarDate (  tag == \"duedate\" ) )\n		\n		 vrs.facts.VrsAccount (  YEAR:year ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YEAR\", YEAR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"date\", (new ActionExpression(\"@DATE( YEAR , 1,  20 )\", bindings)) );\n_p0.put( \"tag\", (new ActionExpression(\"\'duedate\'\", bindings)) );\naction.execute( \"assert-var-date\",_p0,drools);\n\nend\n\n\n	'),('RUL-2776e8bd:183b79e7692:-7f77','\npackage vrsdoc.ADD_MTOP_PERMIT;\nimport vrsdoc.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ADD_MTOP_PERMIT\"\n	agenda-group \"initial\"\n	salience 1000\n	no-loop\n	when\n		\n		\n		 vrs.facts.VrsTxn (  vehicletypeid matches \"mtop\",txntypeid matches \"NEW|RENEWAL\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n	Map _p0 = new HashMap();\n_p0.put( \"doctypeid\", new KeyValue(\"MTOP_PERMIT\", \"MTOP PERMIT\") );\naction.execute( \"add-vrs-doc\",_p0,drools);\n\nend\n\n\n	'),('RUL-473e891:18373c51173:-76a2','\npackage vrsbilling.MAYORS_PERMIT_FEE_MTOP;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"MAYORS_PERMIT_FEE_MTOP\"\n	agenda-group \"compute-fees\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.TransactionYear (  YR:year ) \n		\n		 vrs.facts.VrsTxn (  vehicletypeid matches \"mtop\",txntypeid matches \"NEW|RENEWAL\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"MAYORS_PERMIT_MTOP\", \"MAYORS PERMIT (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"200\", bindings)) );\n_p0.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p0,drools);\n\nend\n\n\n	'),('RUL-55011562:183ee2bb071:-7732','\npackage vrsdoc.ADD_MTOP_FRANCHISE_PERMIT_IN_CAPTURE_MODE;\nimport vrsdoc.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ADD_MTOP_FRANCHISE_PERMIT_IN_CAPTURE_MODE\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 vrs.facts.VrsTxn (  vehicletypeid matches \"mtop\",txnmode matches \"CAPTURE\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n	Map _p0 = new HashMap();\n_p0.put( \"doctypeid\", new KeyValue(\"MTOP_FRANCHISE_PERMIT\", \"MTOP FRANCHISE PERMIT\") );\naction.execute( \"add-vrs-doc\",_p0,drools);\n\nend\n\n\n	'),('RUL-8088163:183c9d69e6e:-7ef5','\npackage vrsdoc.ADD_MTOP_FRANCHISE_PERMIT;\nimport vrsdoc.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ADD_MTOP_FRANCHISE_PERMIT\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 vrs.facts.VrsTxn (  vehicletypeid matches \"mtop\",txntypeid matches \"FRANCHISE_RENEWAL|NEW\",txnmode not matches \"CAPTURE\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n	Map _p0 = new HashMap();\n_p0.put( \"doctypeid\", new KeyValue(\"MTOP_FRANCHISE_PERMIT\", \"MTOP FRANCHISE PERMIT\") );\naction.execute( \"add-vrs-doc\",_p0,drools);\n\nend\n\n\n	'),('RUL1dbf685:183ca5a944b:-70be','\npackage vrsbilling.PENALTY_MTOP;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"PENALTY_MTOP\"\n	agenda-group \"compute-fees\"\n	salience 1000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  DUEDATE:date ) \n		\n		 treasury.facts.TransactionDate (  TDATE:date > DUEDATE ) \n		\n		 treasury.facts.TransactionYear (  YR:year ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"TDATE\", TDATE );\n		\n		bindings.put(\"DUEDATE\", DUEDATE );\n		\n		bindings.put(\"YR\", YR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"PENALTY_MTOP\", \"PENALTY (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"100\", bindings)) );\n_p0.put( \"year\", YR );\n_p0.put( \"duedate\", (new ActionExpression(\"@DAYADD( DUEDATE, 1 )\", bindings)) );\naction.execute( \"add-vrs-billitem\",_p0,drools);\n\nend\n\n\n	'),('RUL1dbf685:183ca5a944b:-714d','\npackage vrsbilling.SIDECAR_PLATE_MTOP;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SIDECAR_PLATE_MTOP\"\n	agenda-group \"compute-fees\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.TransactionYear (  YR:year ) \n		\n		 vrs.facts.VrsTxn (  vehicletypeid matches \"mtop\",txntypeid matches \"NEW|RENEWAL\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"SIDECAR_PLATE_MTOP\", \"SIDECAR PLATE (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"50\", bindings)) );\n_p0.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p0,drools);\n\nend\n\n\n	'),('RUL1dbf685:183ca5a944b:-7536','\npackage vrsbilling.SUPERVISING_FEE_MTOP;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SUPERVISING_FEE_MTOP\"\n	agenda-group \"compute-fees\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.TransactionYear (  YR:year ) \n		\n		 vrs.facts.VrsTxn (  vehicletypeid matches \"mtop\",txntypeid matches \"NEW|RENEWAL\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"SUPERVISING_FEE_MTOP\", \"SUPERVISING FEE (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"150\", bindings)) );\n_p0.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p0,drools);\n\nend\n\n\n	'),('RUL664a91a3:1837d695764:-6dd4','\npackage vrspayment.APPLY_BILLITEM_PAYMENT;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_BILLITEM_PAYMENT\"\n	agenda-group \"apply-payment\"\n	salience 50000\n	\n	when\n		\n		\n		PMT: treasury.facts.Payment (  amount > 0.00 ) \n		\n		BILLITEM: vrs.facts.VrsBillItem (  paid == false  ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"payment\", PMT );\n_p0.put( \"billitem\", BILLITEM );\naction.execute( \"apply-billitem-payment\",_p0,drools);\n\nend\n\n\n	'),('RUL6da9fa81:183789e12da:-79b1','\npackage vrsbilling.SET_BILL_DUE_DATE;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SET_BILL_DUE_DATE\"\n	agenda-group \"summary\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILL: treasury.facts.Bill (   ) \n		\n		 treasury.facts.VarDate (  VDATE:date,tag == \"duedate\" ) \n		\n		 vrs.facts.VrsAccount (  YR:year ) \n		\n		 treasury.facts.TransactionDate (  TDATE:date ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILL\", BILL );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"TDATE\", TDATE );\n		\n		bindings.put(\"VDATE\", VDATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"bill\", BILL );\n_p0.put( \"date\", (new ActionExpression(\"@IIF(  TDATE < VDATE ,  VDATE  ,   @DATE(  YR, 12 , 31 ) )\", bindings)) );\naction.execute( \"set-bill-validity-date\",_p0,drools);\nMap _p1 = new HashMap();\n_p1.put( \"bill\", BILL );\n_p1.put( \"date\", (new ActionExpression(\"VDATE\", bindings)) );\naction.execute( \"set-bill-due-date\",_p1,drools);\n\nend\n\n\n	');
/*!40000 ALTER TABLE `sys_rule_deployed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_fact`
--

DROP TABLE IF EXISTS `sys_rule_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_fact` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `factclass` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `defaultvarname` varchar(25) DEFAULT NULL,
  `dynamic` int(11) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `lookupdatatype` varchar(50) DEFAULT NULL,
  `dynamicfieldname` varchar(50) DEFAULT NULL,
  `builtinconstraints` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `factsuperclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_fact`
--

LOCK TABLES `sys_rule_fact` WRITE;
/*!40000 ALTER TABLE `sys_rule_fact` DISABLE KEYS */;
INSERT INTO `sys_rule_fact` VALUES ('com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate','Current Date','com.rameses.rules.common.CurrentDate',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SYSTEM',NULL),('treasury.facts.AbstractBillItem','treasury.facts.AbstractBillItem','Abstract Bill Item','treasury.facts.AbstractBillItem',1,NULL,'ABILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Bill','treasury.facts.Bill','Bill','treasury.facts.Bill',1,NULL,'BILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.BillSubItem','treasury.facts.BillSubItem','Bill Sub Item','treasury.facts.BillSubItem',1,NULL,'SUBITM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.BooleanInfo','treasury.facts.BooleanInfo','Boolean Info','treasury.facts.BooleanInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CashReceipt','treasury.facts.CashReceipt','Cash Receipt','treasury.facts.CashReceipt',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CashReceiptItem','treasury.facts.CashReceiptItem','Cash Receipt Item','treasury.facts.CashReceiptItem',1,NULL,'CRI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CreditBillItem','treasury.facts.CreditBillItem','Credit Bill Item','treasury.facts.CreditBillItem',1,NULL,'CRBILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.DateInfo','treasury.facts.DateInfo','Date Info','treasury.facts.DateInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.DecimalInfo','treasury.facts.DecimalInfo','Decimal Info','treasury.facts.DecimalInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Deposit','treasury.facts.Deposit','Deposit','treasury.facts.Deposit',5,NULL,'PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.HolidayFact','treasury.facts.HolidayFact','Holidays','treasury.facts.HolidayFact',1,NULL,'HOLIDAYS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.IntegerInfo','treasury.facts.IntegerInfo','Integer Info','treasury.facts.IntegerInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.InterestItem','treasury.facts.InterestItem','Interest Item','treasury.facts.InterestItem',1,NULL,'INT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.Payment','treasury.facts.Payment','Payment','treasury.facts.Payment',5,NULL,'PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.PaymentItem','treasury.facts.PaymentItem','Payment Item','treasury.facts.PaymentItem',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Requirement','treasury.facts.Requirement','Requirement','treasury.facts.Requirement',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.StringInfo','treasury.facts.StringInfo','String Info','treasury.facts.StringInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.SurchargeItem','treasury.facts.SurchargeItem','Surcharge Item','treasury.facts.SurchargeItem',1,NULL,'SURITM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.TransactionDate','treasury.facts.TransactionDate','Transaction Date','treasury.facts.TransactionDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.TransactionYear','treasury.facts.TransactionYear','Transaction Year','treasury.facts.TransactionYear',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.VarDate','treasury.facts.VarDate','Variable Date','treasury.facts.VarDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('vrs.facts.VrsAccount','vrs.facts.VrsAccount','VRS Account','vrs.facts.VrsAccount',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS',NULL),('vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','VRS BillItem','vrs.facts.VrsBillItem',1,NULL,'BILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS','treasury.facts.AbstractBillItem'),('vrs.facts.VrsTxn','vrs.facts.VrsTxn','VRS Transaction','vrs.facts.VrsTxn',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS',NULL);
/*!40000 ALTER TABLE `sys_rule_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_fact_field`
--

DROP TABLE IF EXISTS `sys_rule_fact_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_fact_field` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `lookupdatatype` varchar(50) DEFAULT NULL,
  `multivalued` int(11) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `vardatatype` varchar(50) DEFAULT NULL,
  `lovname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE,
  CONSTRAINT `sys_rule_fact_field_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_fact` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_fact_field`
--

LOCK TABLES `sys_rule_fact_field` WRITE;
/*!40000 ALTER TABLE `sys_rule_fact_field` DISABLE KEYS */;
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.date','com.rameses.rules.common.CurrentDate','date','Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('com.rameses.rules.common.CurrentDate.day','com.rameses.rules.common.CurrentDate','day','Day','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.month','com.rameses.rules.common.CurrentDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.qtr','com.rameses.rules.common.CurrentDate','qtr','Qtr','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.year','com.rameses.rules.common.CurrentDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.AbstractBillItem.acctid','treasury.facts.AbstractBillItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.AbstractBillItem.amount','treasury.facts.AbstractBillItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.AbstractBillItem.objid','treasury.facts.AbstractBillItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.Bill.amount','treasury.facts.Bill','amount','Amount','decimal',6,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Bill.balance','treasury.facts.Bill','balance','Balance','decimal',8,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Bill.balanceforward','treasury.facts.Bill','balanceforward','Balance Forward','decimal',4,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Bill.billdate','treasury.facts.Bill','billdate','Bill Date','date',5,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.Bill.duedate','treasury.facts.Bill','duedate','Due Date','date',9,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.Bill.expirydate','treasury.facts.Bill','expirydate','Expiry Date','date',3,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.Bill.objid','treasury.facts.Bill','objid','ObjID',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('treasury.facts.Bill.state','treasury.facts.Bill','state','State','string',7,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','MARKET_BILL_STATE'),('treasury.facts.Bill.validitydate','treasury.facts.Bill','validitydate','Validity Date','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillSubItem.acctid','treasury.facts.BillSubItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.BillSubItem.amount','treasury.facts.BillSubItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.BillSubItem.billitemrefid','treasury.facts.BillSubItem','billitemrefid','Bill Item Refid','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.BillSubItem.objid','treasury.facts.BillSubItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.BillSubItem.type','treasury.facts.BillSubItem','type','Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','SUB_BILLITEM_TYPE'),('treasury.facts.BooleanInfo.name','treasury.facts.BooleanInfo','name','Name','string',1,'lookup','variable:boolean:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.BooleanInfo.value','treasury.facts.BooleanInfo','value','Value','boolean',2,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.CashReceipt.receiptdate','treasury.facts.CashReceipt','receiptdate','Receipt Date','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.CashReceipt.txnmode','treasury.facts.CashReceipt','txnmode','Txn Mode','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CashReceiptItem.account','treasury.facts.CashReceiptItem','account','Account','string',1,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.CashReceiptItem.amount','treasury.facts.CashReceiptItem','amount','Amount','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.CashReceiptItem.remarks','treasury.facts.CashReceiptItem','remarks','Remarks','string',3,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CashReceiptItem.sortorder','treasury.facts.CashReceiptItem','sortorder','Sort Order','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.CreditBillItem.acctid','treasury.facts.CreditBillItem','acctid','Account','string',3,'lookup','itemaccount:credit:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.CreditBillItem.billcode','treasury.facts.CreditBillItem','billcode','Bill code','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CreditBillItem.unusedbalance','treasury.facts.CreditBillItem','unusedbalance','Unused Balance','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.DateInfo.month','treasury.facts.DateInfo','month','Month','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DateInfo.name','treasury.facts.DateInfo','name','Name','string',1,'lookup','variable:date:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.DateInfo.qtr','treasury.facts.DateInfo','qtr','Qtr','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DateInfo.value','treasury.facts.DateInfo','value','Value','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.DateInfo.year','treasury.facts.DateInfo','year','Year','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DecimalInfo.name','treasury.facts.DecimalInfo','name','Name','string',1,'lookup','variable:decimal:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.DecimalInfo.value','treasury.facts.DecimalInfo','value','Value','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Deposit.amount','treasury.facts.Deposit','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.HolidayFact.id','treasury.facts.HolidayFact','id','ID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.IntegerInfo.name','treasury.facts.IntegerInfo','name','Name','string',1,'lookup','variable:integer:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.IntegerInfo.value','treasury.facts.IntegerInfo','value','Value','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.InterestItem.acctid','treasury.facts.InterestItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.amount','treasury.facts.InterestItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.InterestItem.billcode','treasury.facts.InterestItem','billcode','Bill code','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.billitemrefid','treasury.facts.InterestItem','billitemrefid','Bill Item Refid','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.forwarded','treasury.facts.InterestItem','forwarded','Forwarded','boolean',7,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.InterestItem.objid','treasury.facts.InterestItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.type','treasury.facts.InterestItem','type','Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','SUB_BILLITEM_TYPE'),('treasury.facts.Payment.amount','treasury.facts.Payment','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Payment.reftype','treasury.facts.Payment','reftype','Ref Type','string',2,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','PAYMENT_REFTYPE'),('treasury.facts.PaymentItem.amount','treasury.facts.PaymentItem','amount','Amount','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.PaymentItem.billitemrefid','treasury.facts.PaymentItem','billitemrefid','Bill Item Ref ID','string',1,'var',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.Requirement.code','treasury.facts.Requirement','code','Code','string',1,'lookup','requirementtype:lookup','code','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.Requirement.completed','treasury.facts.Requirement','completed','Completed','boolean',2,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.StringInfo.name','treasury.facts.StringInfo','name','Name','string',1,'lookup','variable:string:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.StringInfo.value','treasury.facts.StringInfo','value','Value','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.acctid','treasury.facts.SurchargeItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.amount','treasury.facts.SurchargeItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.SurchargeItem.billcode','treasury.facts.SurchargeItem','billcode','Bill code','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.billitemrefid','treasury.facts.SurchargeItem','billitemrefid','Bill Item Refid','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.forwarded','treasury.facts.SurchargeItem','forwarded','Forwarded','boolean',7,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.SurchargeItem.objid','treasury.facts.SurchargeItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.type','treasury.facts.SurchargeItem','type','Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','SUB_BILLITEM_TYPE'),('treasury.facts.TransactionDate.date','treasury.facts.TransactionDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.TransactionDate.day','treasury.facts.TransactionDate','day','Day','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionDate.month','treasury.facts.TransactionDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionDate.qtr','treasury.facts.TransactionDate','qtr','Qtr','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionDate.tag','treasury.facts.TransactionDate','tag','Tag','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.TransactionDate.year','treasury.facts.TransactionDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionYear.year','treasury.facts.TransactionYear','year','Year','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarDate.date','treasury.facts.VarDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.VarDate.tag','treasury.facts.VarDate','tag','Tag','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.acctno','vrs.facts.VrsAccount','acctno','Acct No','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.apptype','vrs.facts.VrsAccount','apptype','App Type','string',6,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','VRS_APP_TYPE'),('vrs.facts.VrsAccount.franchiseno','vrs.facts.VrsAccount','franchiseno','Franchise No','string',4,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.lastyearrenewed','vrs.facts.VrsAccount','lastyearrenewed','Last Year Renewed','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsAccount.vehicletypeid','vrs.facts.VrsAccount','vehicletypeid','Vehicle Type','string',3,'lookup','vrs_vehicletype:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.year','vrs.facts.VrsAccount','year','Year','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsBillItem.acctid','vrs.facts.VrsBillItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.amount','vrs.facts.VrsBillItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.amtpaid','vrs.facts.VrsBillItem','amtpaid','Amt Paid','decimal',7,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.balance','vrs.facts.VrsBillItem','balance','Balance','decimal',8,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.billcode','vrs.facts.VrsBillItem','billcode','Bill code','string',6,'lookup','eboss_itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.billid','vrs.facts.VrsBillItem','billid','Bill ID','string',11,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.interest','vrs.facts.VrsBillItem','interest','Interest','decimal',10,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.itemtype','vrs.facts.VrsBillItem','itemtype','Item Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','BUSINESS_BILLITEM_TYPES'),('vrs.facts.VrsBillItem.objid','vrs.facts.VrsBillItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.paid','vrs.facts.VrsBillItem','paid','Paid','boolean',5,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('vrs.facts.VrsBillItem.previous','vrs.facts.VrsBillItem','previous','Previous','boolean',13,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('vrs.facts.VrsBillItem.supersededid','vrs.facts.VrsBillItem','supersededid','Superseded ID','string',12,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.surcharge','vrs.facts.VrsBillItem','surcharge','Surcharge','decimal',9,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.year','vrs.facts.VrsBillItem','year','Year','integer',14,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsTxn.txnmode','vrs.facts.VrsTxn','txnmode','Txn Mode','string',3,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','TXNMODE'),('vrs.facts.VrsTxn.txntypeid','vrs.facts.VrsTxn','txntypeid','Txn Type','string',1,'lookup','vrs_txntype:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsTxn.vehicletypeid','vrs.facts.VrsTxn','vehicletypeid','Vehicle Type','string',2,'lookup','vrs_vehicletype:lookup','objid','title',NULL,NULL,NULL,'string',NULL);
/*!40000 ALTER TABLE `sys_rule_fact_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rulegroup`
--

DROP TABLE IF EXISTS `sys_rulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rulegroup` (
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`ruleset`) USING BTREE,
  KEY `ruleset` (`ruleset`) USING BTREE,
  CONSTRAINT `sys_rulegroup_ibfk_1` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rulegroup`
--

LOCK TABLES `sys_rulegroup` WRITE;
/*!40000 ALTER TABLE `sys_rulegroup` DISABLE KEYS */;
INSERT INTO `sys_rulegroup` VALUES ('apply-credits','vrsbilling','Apply Credits',4),('apply-payment','vrspayment','Apply Payment',1),('compute-fees','vrsbilling','Compute Fees',1),('compute-interest','vrsbilling','Compute Interest',3),('compute-surcharge','vrsbilling','Compute Surcharge',2),('initial','vrsbilling','Initial',0),('initial','vrsdoc','Initial',0),('initial','vrspayment','Initial',0),('map-account','vrspayment','Map Account',3),('summary','vrsbilling','Summary',5),('summary','vrspayment','Summary',4);
/*!40000 ALTER TABLE `sys_rulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset`
--

DROP TABLE IF EXISTS `sys_ruleset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset` (
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `packagename` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `permission` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset`
--

LOCK TABLES `sys_ruleset` WRITE;
/*!40000 ALTER TABLE `sys_ruleset` DISABLE KEYS */;
INSERT INTO `sys_ruleset` VALUES ('vrsbilling','VRS Billing','vrsbilling','VRS','RULE_AUTHOR',NULL),('vrsdoc','VRS Document Rules','vrsdoc','VRS','RULE_AUTHOR',NULL),('vrspayment','VRS Payment','vrspayment','VRS','RULE_AUTHOR',NULL);
/*!40000 ALTER TABLE `sys_ruleset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset_actiondef`
--

DROP TABLE IF EXISTS `sys_ruleset_actiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset_actiondef` (
  `ruleset` varchar(50) NOT NULL,
  `actiondef` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`actiondef`) USING BTREE,
  KEY `actiondef` (`actiondef`) USING BTREE,
  CONSTRAINT `fk_sys_ruleset_actiondef_actiondef` FOREIGN KEY (`actiondef`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `sys_ruleset_actiondef_ibfk_2` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset_actiondef`
--

LOCK TABLES `sys_ruleset_actiondef` WRITE;
/*!40000 ALTER TABLE `sys_ruleset_actiondef` DISABLE KEYS */;
INSERT INTO `sys_ruleset_actiondef` VALUES ('vrsbilling','enterprise.actions.PrintTest'),('vrspayment','enterprise.actions.PrintTest'),('vrsbilling','enterprise.actions.ThrowException'),('vrspayment','enterprise.actions.ThrowException'),('vrspayment','treasury.actions.AddCashReceiptItem'),('vrspayment','treasury.actions.AddCreditBillItem'),('vrsbilling','treasury.actions.ApplyBillItemCredit'),('vrspayment','treasury.actions.ApplyBillItemPayment'),('vrsbilling','treasury.actions.AssertVarDate'),('vrsbilling','treasury.actions.SetBillDueDate'),('vrsbilling','treasury.actions.SetBillValidityDate'),('vrsbilling','treasury.actions.UpdateBillItemAmount'),('vrsbilling','vrs.actions.AddVrsBillItem'),('vrsdoc','vrs.actions.AddVrsDoc');
/*!40000 ALTER TABLE `sys_ruleset_actiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset_fact`
--

DROP TABLE IF EXISTS `sys_ruleset_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset_fact` (
  `ruleset` varchar(50) NOT NULL,
  `rulefact` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`rulefact`) USING BTREE,
  KEY `rulefact` (`rulefact`) USING BTREE,
  CONSTRAINT `fk_sys_ruleset_fact_rulefact` FOREIGN KEY (`rulefact`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `sys_ruleset_fact_ibfk_2` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset_fact`
--

LOCK TABLES `sys_ruleset_fact` WRITE;
/*!40000 ALTER TABLE `sys_ruleset_fact` DISABLE KEYS */;
INSERT INTO `sys_ruleset_fact` VALUES ('vrsbilling','treasury.facts.Bill'),('vrspayment','treasury.facts.BillSubItem'),('vrspayment','treasury.facts.CashReceiptItem'),('vrsbilling','treasury.facts.CreditBillItem'),('vrspayment','treasury.facts.CreditBillItem'),('vrsbilling','treasury.facts.DecimalInfo'),('vrsbilling','treasury.facts.IntegerInfo'),('vrspayment','treasury.facts.Payment'),('vrspayment','treasury.facts.PaymentItem'),('vrsbilling','treasury.facts.StringInfo'),('vrsbilling','treasury.facts.TransactionDate'),('vrsbilling','treasury.facts.TransactionYear'),('vrsbilling','treasury.facts.VarDate'),('vrsbilling','vrs.facts.VrsAccount'),('vrsdoc','vrs.facts.VrsAccount'),('vrsbilling','vrs.facts.VrsBillItem'),('vrspayment','vrs.facts.VrsBillItem'),('vrsbilling','vrs.facts.VrsTxn'),('vrsdoc','vrs.facts.VrsTxn');
/*!40000 ALTER TABLE `sys_ruleset_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sequence`
--

DROP TABLE IF EXISTS `sys_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sequence` (
  `objid` varchar(100) NOT NULL,
  `nextSeries` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sequence`
--

LOCK TABLES `sys_sequence` WRITE;
/*!40000 ALTER TABLE `sys_sequence` DISABLE KEYS */;
INSERT INTO `sys_sequence` VALUES ('MTAC-00000',3),('MTOP-00000',36),('MTOP202210000000',6),('VCA202210000000',11),('VCI202210000000',10),('VCO202210000000',2),('VR202210000000',10),('VRFR202210000000',4);
/*!40000 ALTER TABLE `sys_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_signature`
--

DROP TABLE IF EXISTS `sys_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_signature` (
  `objid` varchar(50) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `signature` mediumblob,
  `tag` varchar(50) DEFAULT NULL,
  `system` int(1) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_signature`
--

LOCK TABLES `sys_signature` WRITE;
/*!40000 ALTER TABLE `sys_signature` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_signature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `objid` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `jobtitle` varchar(50) DEFAULT NULL,
  `txncode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_username` (`username`) USING BTREE,
  KEY `ix_lastname_firstname` (`lastname`,`firstname`) USING BTREE,
  KEY `ix_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `objid` varchar(50) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `userid` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `org_objid` varchar(50) DEFAULT NULL,
  `org_name` varchar(50) DEFAULT NULL,
  `securitygroup_objid` varchar(50) DEFAULT NULL,
  `exclude` varchar(255) DEFAULT NULL,
  `uid` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_sys_user_role_uid` (`uid`) USING BTREE,
  KEY `fk_sys_user_role_role` (`role`) USING BTREE,
  KEY `fk_sys_user_role_userid` (`userid`) USING BTREE,
  CONSTRAINT `fk_sys_user_role_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`),
  CONSTRAINT `fk_sys_user_role_userid` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_var`
--

DROP TABLE IF EXISTS `sys_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_var` (
  `name` varchar(50) NOT NULL,
  `value` longtext,
  `description` varchar(255) DEFAULT NULL,
  `datatype` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_var`
--

LOCK TABLES `sys_var` WRITE;
/*!40000 ALTER TABLE `sys_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf`
--

DROP TABLE IF EXISTS `sys_wf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf` (
  `name` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf`
--

LOCK TABLES `sys_wf` WRITE;
/*!40000 ALTER TABLE `sys_wf` DISABLE KEYS */;
INSERT INTO `sys_wf` VALUES ('vrsbasic','Vehicle Basic Workflow','VRS'),('vrscommon','Vehicle Common Workflow','VRS'),('vrs_change_info','Vehicle Change Info','VRS'),('vrs_close_account','Vehicle Close Account Workflow','VRS'),('vrs_franchise_renewal','Vehicle Franchise Renewal','VRS');
/*!40000 ALTER TABLE `sys_wf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_eventaction`
--

DROP TABLE IF EXISTS `sys_wf_eventaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_eventaction` (
  `processname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `eventtype` varchar(10) DEFAULT NULL,
  `index` int(2) DEFAULT NULL,
  `nodename` varchar(50) DEFAULT NULL,
  `transitionto` varchar(50) DEFAULT NULL,
  `scriptname` varchar(255) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `retval` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`processname`,`name`) USING BTREE,
  KEY `fk_sys_wf_eventaction_transition` (`processname`,`nodename`,`transitionto`) USING BTREE,
  CONSTRAINT `fk_sys_wf_eventaction_node` FOREIGN KEY (`processname`, `nodename`) REFERENCES `sys_wf_node` (`processname`, `name`),
  CONSTRAINT `fk_sys_wf_eventaction_transition` FOREIGN KEY (`processname`, `nodename`, `transitionto`) REFERENCES `sys_wf_transition` (`processname`, `parentid`, `to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_eventaction`
--

LOCK TABLES `sys_wf_eventaction` WRITE;
/*!40000 ALTER TABLE `sys_wf_eventaction` DISABLE KEYS */;
INSERT INTO `sys_wf_eventaction` VALUES ('vrsbasic','check-payment','before',1,'evaluate-payment',NULL,'VrsTxnWfUtilService','checkPaymentMade','[ refid: refid ]',NULL,1),('vrsbasic','update-permit-issued','before',1,'releasing','end','VrsTxnWfUtilService','updateVehiclePermitIssued','[refid: refid ]',NULL,1),('vrsbasic','validate-bill','before',1,'assessment','approval','VrsTxnWfUtilService','validateBill','[ refid: refid ] ',NULL,1),('vrs_change_info','updateInfo','before',1,'approval','end','VrsTxnWfUtilService','updateHeaderInfo','[ refid : refid ]',NULL,1),('vrs_close_account','close-account','before',1,'releasing','end','VrsTxnWfUtilService','closeAccount','[ refid: refid ]',NULL,1),('vrs_franchise_renewal','check-payment','before',1,'evaluate-payment',NULL,'VrsTxnWfUtilService','checkPaymentMade','[ refid: refid ]',NULL,1),('vrs_franchise_renewal','update-franchise-permit','before',1,'releasing','end','VrsTxnWfUtilService','updateFranchisePermitIssued','[refid: refid]',NULL,1),('vrs_franchise_renewal','validate-bill','before',1,'assessment','approval','VrsTxnWfUtilService','validateBill','[ refid: refid ] ',NULL,1);
/*!40000 ALTER TABLE `sys_wf_eventaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_node`
--

DROP TABLE IF EXISTS `sys_wf_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_node` (
  `name` varchar(50) NOT NULL,
  `processname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `nodetype` varchar(10) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `salience` int(11) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `ui` text,
  `properties` text,
  `tracktime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`processname`) USING BTREE,
  KEY `fk_sys_wf_node_role` (`role`) USING BTREE,
  KEY `fk_syw_wf_node_processname` (`processname`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  CONSTRAINT `fk_sys_wf_node_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`),
  CONSTRAINT `fk_syw_wf_node_processname` FOREIGN KEY (`processname`) REFERENCES `sys_wf` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_node`
--

LOCK TABLES `sys_wf_node` WRITE;
/*!40000 ALTER TABLE `sys_wf_node` DISABLE KEYS */;
INSERT INTO `sys_wf_node` VALUES ('approval','vrsbasic','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[251,172],size:[110,62]]','[:]',1),('approval','vrscommon','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[409,93],size:[110,62]]','[:]',1),('approval','vrs_change_info','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[368,79],size:[110,62]]','[:]',1),('approval','vrs_close_account','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[409,93],size:[110,62]]','[:]',1),('approval','vrs_franchise_renewal','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[251,172],size:[110,62]]','[:]',1),('assessment','vrsbasic','Assessment','state',1,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[386,81],size:[106,59]]','[:]',1),('assessment','vrs_franchise_renewal','Assessment','state',1,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[386,81],size:[106,59]]','[:]',1),('end','vrsbasic','Completed','end',5,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[1043,249],size:[32,32]]','[:]',NULL),('end','vrscommon','Completed','end',4,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[784,190],size:[32,32]]','[:]',NULL),('end','vrs_change_info','Completed','end',4,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[625,148],size:[32,32]]','[:]',NULL),('end','vrs_close_account','Completed','end',4,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[784,190],size:[32,32]]','[:]',NULL),('end','vrs_franchise_renewal','Completed','end',5,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[1043,249],size:[32,32]]','[:]',NULL),('evaluate-payment','vrsbasic','Evaluate Payment','decision',4,0,NULL,NULL,'[type:\"decision\",fillColor:\"#c0c0c0\",pos:[606,235],size:[111,56]]','[:]',NULL),('evaluate-payment','vrs_franchise_renewal','Evaluate Payment','decision',4,0,NULL,NULL,'[type:\"decision\",fillColor:\"#c0c0c0\",pos:[606,235],size:[111,56]]','[:]',NULL),('payment','vrsbasic','Payment','state',3,0,'VRS','SYSTEM','[type:\"state\",fillColor:\"#c0c0c0\",pos:[434,178],size:[113,54]]','[:]',NULL),('payment','vrs_franchise_renewal','Payment','state',3,0,'VRS','SYSTEM','[type:\"state\",fillColor:\"#c0c0c0\",pos:[434,178],size:[113,54]]','[:]',NULL),('receiving','vrsbasic','Receiving','state',0,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[220,63],size:[96,58]]','[:]',1),('receiving','vrscommon','Receiving','state',1,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[220,63],size:[96,58]]','[:]',1),('receiving','vrs_close_account','Receiving','state',1,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[220,63],size:[96,58]]','[:]',1),('receiving','vrs_franchise_renewal','Receiving','state',0,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[220,63],size:[96,58]]','[:]',1),('releasing','vrsbasic','Releasing','state',4,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[863,238],size:[102,53]]','[:]',1),('releasing','vrscommon','Releasing','state',3,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[609,186],size:[102,53]]','[:]',1),('releasing','vrs_close_account','Releasing','state',3,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[609,186],size:[102,53]]','[:]',1),('releasing','vrs_franchise_renewal','Releasing','state',4,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[863,238],size:[102,53]]','[:]',1),('start','vrsbasic','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrscommon','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrs_change_info','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrs_close_account','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrs_franchise_renewal','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL);
/*!40000 ALTER TABLE `sys_wf_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_transition`
--

DROP TABLE IF EXISTS `sys_wf_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_transition` (
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `processname` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `idx` int(11) DEFAULT NULL,
  `eval` mediumtext,
  `properties` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ui` text,
  PRIMARY KEY (`parentid`,`processname`,`to`,`action`) USING BTREE,
  UNIQUE KEY `uix_sys_wf_transition_uix` (`processname`,`parentid`,`to`) USING BTREE,
  KEY `fk_sys_wf_transition_processname_parentid` (`processname`,`parentid`) USING BTREE,
  KEY `processname` (`processname`,`parentid`,`to`) USING BTREE,
  KEY `fk_sys_wf_transition_processname_to` (`processname`,`to`) USING BTREE,
  CONSTRAINT `fk_sys_wf_transition_processname_parentid` FOREIGN KEY (`processname`, `parentid`) REFERENCES `sys_wf_node` (`processname`, `name`),
  CONSTRAINT `fk_sys_wf_transition_processname_to` FOREIGN KEY (`processname`, `to`) REFERENCES `sys_wf_node` (`processname`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_transition`
--

LOCK TABLES `sys_wf_transition` WRITE;
/*!40000 ALTER TABLE `sys_wf_transition` DISABLE KEYS */;
INSERT INTO `sys_wf_transition` VALUES ('approval','vrsbasic','approve','payment',0,NULL,'[:]',NULL,'Approve','[points:[361,203,434,201],type:\"arrow\",pos:[361,201],size:[73,2]]'),('approval','vrscommon','approve','releasing',0,NULL,'[showConfirm:true,confirmMessage:\"You are about to approve this transaction. Continue?\"]',NULL,'Approve','[points:[519,148,609,189],type:\"arrow\",pos:[519,148],size:[90,41]]'),('approval','vrs_change_info','approve','end',0,NULL,'[showConfirm:true,confirmMessage:\"You are about to approve these changes. Proceed?\"]',NULL,'Approve','[points:[478,123,625,158],type:\"arrow\",pos:[478,123],size:[147,35]]'),('approval','vrs_close_account','approve','releasing',0,NULL,'[showConfirm:true,confirmMessage:\"You are about to approve this transaction. Continue?\"]',NULL,'Approve','[points:[519,148,609,189],type:\"arrow\",pos:[519,148],size:[90,41]]'),('approval','vrs_franchise_renewal','approve','payment',0,NULL,'[:]',NULL,'Approve','[points:[361,203,434,201],type:\"arrow\",pos:[361,201],size:[73,2]]'),('assessment','vrsbasic','submit','approval',0,NULL,'[:]',NULL,'Submit for Approval','[points:[395,140,350,172],type:\"arrow\",pos:[350,140],size:[45,32]]'),('assessment','vrs_franchise_renewal','submit','approval',0,NULL,'[:]',NULL,'Submit for Approval','[points:[395,140,350,172],type:\"arrow\",pos:[350,140],size:[45,32]]'),('evaluate-payment','vrsbasic','payment-incomplete','payment',0,'info.paymentcomplete == false','[:]',NULL,'Payment Incomplete','[points:[661,291,648,377,510,370,493,232],type:\"arrow\",pos:[493,232],size:[168,145]]'),('evaluate-payment','vrsbasic','payment-complete','releasing',0,'info.paymentcomplete == true','[:]',NULL,'Payment success','[points:[717,260,863,263],type:\"arrow\",pos:[717,260],size:[146,3]]'),('evaluate-payment','vrs_franchise_renewal','payment-incomplete','payment',0,'info.paymentcomplete == false','[:]',NULL,'Payment Incomplete','[points:[661,291,648,377,510,370,493,232],type:\"arrow\",pos:[493,232],size:[168,145]]'),('evaluate-payment','vrs_franchise_renewal','payment-complete','releasing',0,'info.paymentcomplete == true','[:]',NULL,'Payment success','[points:[717,260,863,263],type:\"arrow\",pos:[717,260],size:[146,3]]'),('payment','vrsbasic','post-payment','evaluate-payment',0,NULL,'[:]',NULL,'Post Payment','[points:[543,232,549,260,610,264],type:\"arrow\",pos:[543,232],size:[67,32]]'),('payment','vrs_franchise_renewal','post-payment','evaluate-payment',0,NULL,'[:]',NULL,'Post Payment','[points:[543,232,549,260,610,264],type:\"arrow\",pos:[543,232],size:[67,32]]'),('receiving','vrsbasic','submit','assessment',0,NULL,'[:]',NULL,'Submit for Assessment','[points:[316,96,386,104],type:\"arrow\",pos:[316,96],size:[70,8]]'),('receiving','vrscommon','submit','approval',0,NULL,'[:]',NULL,'Submit For Approval','[points:[316,98,409,110],type:\"arrow\",pos:[316,98],size:[93,12]]'),('receiving','vrs_close_account','submit','approval',0,NULL,'[:]',NULL,'Submit For Approval','[points:[316,98,409,110],type:\"arrow\",pos:[316,98],size:[93,12]]'),('receiving','vrs_franchise_renewal','submit','assessment',0,NULL,'[:]',NULL,'Submit for Assessment','[points:[316,96,386,104],type:\"arrow\",pos:[316,96],size:[70,8]]'),('receiving','vrs_franchise_renewal','send-for-release','releasing',0,NULL,'[:]',NULL,'Send for Releasing','[points:[316,80,499,38,770,72,866,238],type:\"arrow\",pos:[316,38],size:[550,200]]'),('releasing','vrsbasic','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[965,261,1043,265],type:\"arrow\",pos:[965,261],size:[78,4]]'),('releasing','vrsbasic','void-payment','payment',0,NULL,'[visibleWhen:\"#{ false }\"]',NULL,'Void Payment','[points:[904,238,885,181,547,201],type:\"arrow\",pos:[547,181],size:[357,57]]'),('releasing','vrscommon','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[711,209,784,206],type:\"arrow\",pos:[711,206],size:[73,3]]'),('releasing','vrs_close_account','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[711,209,784,206],type:\"arrow\",pos:[711,206],size:[73,3]]'),('releasing','vrs_franchise_renewal','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[965,261,1043,265],type:\"arrow\",pos:[965,261],size:[78,4]]'),('releasing','vrs_franchise_renewal','void-payment','payment',0,NULL,'[visibleWhen:\"#{ false }\"]',NULL,'Void Payment','[points:[904,238,885,181,547,201],type:\"arrow\",pos:[547,181],size:[357,57]]'),('start','vrsbasic','start','receiving',0,NULL,'[:]',NULL,'Start','[points:[132,49,220,76],type:\"arrow\",pos:[132,49],size:[88,27]]'),('start','vrscommon','start','receiving',0,NULL,'[:]',NULL,'Start','[points:[132,49,220,76],type:\"arrow\",pos:[132,49],size:[88,27]]'),('start','vrs_change_info','start','approval',0,NULL,'[:]',NULL,'Start','[points:[132,48,170,59,368,98],type:\"arrow\",pos:[132,48],size:[236,50]]'),('start','vrs_close_account','start','receiving',0,NULL,'[:]',NULL,'Start','[points:[132,49,220,76],type:\"arrow\",pos:[132,49],size:[88,27]]'),('start','vrs_franchise_renewal','start','receiving',0,NULL,'[:]',NULL,'Start','[points:[132,49,220,76],type:\"arrow\",pos:[132,49],size:[88,27]]');
/*!40000 ALTER TABLE `sys_wf_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_abstract_billitem`
--

DROP TABLE IF EXISTS `vrs_abstract_billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_abstract_billitem` (
  `objid` varchar(50) NOT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `itemid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtpaid` decimal(16,2) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `auto` int(11) DEFAULT '0',
  `forwarded` int(11) DEFAULT '0',
  `billdate` date DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_market_billitem_billid_uid` (`billid`,`uid`) USING BTREE,
  KEY `fk_market_billitem_itemid` (`itemid`) USING BTREE,
  KEY `uix_market_bilitem_acctid_itemid_billscheduleid` (`billid`,`itemid`) USING BTREE,
  CONSTRAINT `fk_vrs_billitem_billid` FOREIGN KEY (`billid`) REFERENCES `vrs_bill` (`objid`),
  CONSTRAINT `fk_vrs_billitem_itemid` FOREIGN KEY (`itemid`) REFERENCES `vrs_itemaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_abstract_billitem`
--

LOCK TABLES `vrs_abstract_billitem` WRITE;
/*!40000 ALTER TABLE `vrs_abstract_billitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_abstract_billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account`
--

DROP TABLE IF EXISTS `vrs_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account` (
  `objid` varchar(50) NOT NULL,
  `franchiseid` varchar(50) DEFAULT NULL,
  `headerinfoid` varchar(50) DEFAULT NULL,
  `acctno` varchar(50) DEFAULT NULL,
  `acctyearid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_vrs_account_acctno` (`acctno`),
  KEY `fk_vrs_account_franchiseid` (`franchiseid`),
  KEY `fk_vrs_account_headerinfoid` (`headerinfoid`),
  KEY `fk_vrs_account_acctyearid` (`acctyearid`),
  CONSTRAINT `fk_vrs_account_acctyearid` FOREIGN KEY (`acctyearid`) REFERENCES `vrs_account_year` (`objid`),
  CONSTRAINT `fk_vrs_account_franchiseid` FOREIGN KEY (`franchiseid`) REFERENCES `vrs_franchise` (`objid`),
  CONSTRAINT `fk_vrs_account_headerinfoid` FOREIGN KEY (`headerinfoid`) REFERENCES `vrs_header_info` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account`
--

LOCK TABLES `vrs_account` WRITE;
/*!40000 ALTER TABLE `vrs_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account_case`
--

DROP TABLE IF EXISTS `vrs_account_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account_case` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `casetypeid` varchar(50) DEFAULT NULL,
  `particulars` text,
  `workgroupid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `dtissued` date DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_account_case_acctid` (`acctid`),
  CONSTRAINT `fk_vrs_account_case_acctid` FOREIGN KEY (`acctid`) REFERENCES `vrs_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account_case`
--

LOCK TABLES `vrs_account_case` WRITE;
/*!40000 ALTER TABLE `vrs_account_case` DISABLE KEYS */;
INSERT INTO `vrs_account_case` VALUES ('VRSCASE-142894f9:183ea0b2328:-7f42','CLOSED','VRSACCT2ec71eb0:183e9cbb378:-7fff',NULL,'-',NULL,'VRSCASEf7f504c:183ea094af3:-7f42','2022-10-18','2022-10-18 15:43:40','USR-1b82c604:14cc29913bb:-7fec','ADMIN . ADMIN',NULL,NULL),('VRSCASE51762a44:183e986714d:-7edf','CRITICAL','VRSACCT-49e9f24f:183e39a37cc:-7ff2',NULL,'Sample violation needs in the open. change to critical',NULL,'VRSCASE78613c78:183e97574fc:-7f5b','2022-10-18','2022-10-18 13:49:22','USR-1b82c604:14cc29913bb:-7fec','ADMIN . ADMIN',NULL,NULL),('VRSCASE5fe874f0:183e9d9a2e3:-7b0d','OPEN','VRSACCT2ec71eb0:183e9cbb378:-7fff',NULL,'Violation in tracer. Needs resolving',NULL,'VRSCASE5fe874f0:183e9d9a2e3:-7b83','2022-10-18','2022-10-18 15:04:32','USR-1b82c604:14cc29913bb:-7fec','ADMIN . ADMIN',NULL,NULL),('VRSCASE5fe874f0:183e9d9a2e3:-7b83','CRITICAL','VRSACCT2ec71eb0:183e9cbb378:-7fff',NULL,'Violation in tracer. Needs resolving',NULL,NULL,'2022-10-18','2022-10-18 15:03:46','USR-1b82c604:14cc29913bb:-7fec','ADMIN . ADMIN',NULL,NULL),('VRSCASE78613c78:183e97574fc:-7f5b','OPEN','VRSACCT-49e9f24f:183e39a37cc:-7ff2',NULL,'Sample violation needs in the open',NULL,NULL,'2022-10-18','2022-10-18 13:01:28','USR-1b82c604:14cc29913bb:-7fec','ADMIN . ADMIN',NULL,NULL),('VRSCASEf7f504c:183ea094af3:-7f42','CRITICAL','VRSACCT2ec71eb0:183e9cbb378:-7fff',NULL,'new case',NULL,NULL,'2022-10-18','2022-10-18 15:41:14','USR-1b82c604:14cc29913bb:-7fec','ADMIN . ADMIN',NULL,NULL);
/*!40000 ALTER TABLE `vrs_account_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account_group`
--

DROP TABLE IF EXISTS `vrs_account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account_group` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leftindex` int(5) DEFAULT NULL,
  `rightindex` int(5) DEFAULT NULL,
  `fullpath` varchar(500) DEFAULT NULL,
  `uid` int(100) NOT NULL,
  `sortorder` int(5) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `objid` (`objid`) USING BTREE,
  KEY `fk_vrs_account_group_vehicletypeid` (`vehicletypeid`) USING BTREE,
  KEY `fk_vrs_account_group_parentid` (`parentid`) USING BTREE,
  KEY `uix_vrs_account_group_uid` (`uid`) USING BTREE,
  CONSTRAINT `fk_vrs_account_group_parentid` FOREIGN KEY (`parentid`) REFERENCES `vrs_account_group` (`objid`),
  CONSTRAINT `fk_vrs_account_group_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account_group`
--

LOCK TABLES `vrs_account_group` WRITE;
/*!40000 ALTER TABLE `vrs_account_group` DISABLE KEYS */;
INSERT INTO `vrs_account_group` VALUES ('VRSACCTGRP1dbf685:183ca5a944b:-7bf3','mtop',NULL,'L002','PARADA 4 ',0,1,'L002',2311782,0),('VRSACCTGRP1dbf685:183ca5a944b:-7c09','mtop',NULL,'L001','PARADA 1 - LCC LEGAZPI',0,1,'L001',2311781,0);
/*!40000 ALTER TABLE `vrs_account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account_year`
--

DROP TABLE IF EXISTS `vrs_account_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account_year` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `activeyear` int(11) DEFAULT NULL,
  `vehiclepermitid` varchar(50) DEFAULT NULL,
  `franchisepermitid` varchar(50) DEFAULT NULL,
  `lastyearrenewed` int(11) DEFAULT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_account_year_acctid_acctyear` (`acctid`,`activeyear`),
  KEY `fk_vrs_account_year_franchisepermitid` (`franchisepermitid`),
  KEY `fk_vrs_account_year_vehiclepermitid` (`vehiclepermitid`),
  KEY `fk_vrs_account_year_txnid` (`txnid`),
  CONSTRAINT `fk_vrs_account_year_acctid` FOREIGN KEY (`acctid`) REFERENCES `vrs_account` (`objid`),
  CONSTRAINT `fk_vrs_account_year_franchisepermitid` FOREIGN KEY (`franchisepermitid`) REFERENCES `vrs_doc_issuance` (`objid`),
  CONSTRAINT `fk_vrs_account_year_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`),
  CONSTRAINT `fk_vrs_account_year_vehiclepermitid` FOREIGN KEY (`vehiclepermitid`) REFERENCES `vrs_doc_issuance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account_year`
--

LOCK TABLES `vrs_account_year` WRITE;
/*!40000 ALTER TABLE `vrs_account_year` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_account_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_bill`
--

DROP TABLE IF EXISTS `vrs_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_bill` (
  `objid` varchar(50) NOT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `validitydate` date DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `balanceforward` decimal(16,2) DEFAULT NULL,
  `totalpayment` decimal(16,2) DEFAULT NULL,
  `interest` decimal(16,2) DEFAULT NULL,
  `surcharge` decimal(16,2) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `discount` decimal(16,2) DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_market_bill_billno` (`billno`) USING BTREE,
  KEY `fk_vrs_bill_txnid` (`txnid`),
  CONSTRAINT `fk_vrs_bill_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_bill`
--

LOCK TABLES `vrs_bill` WRITE;
/*!40000 ALTER TABLE `vrs_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_billitem`
--

DROP TABLE IF EXISTS `vrs_billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_billitem` (
  `objid` varchar(50) NOT NULL,
  `year` int(4) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  CONSTRAINT `fk_vrs_billitem_objid` FOREIGN KEY (`objid`) REFERENCES `vrs_abstract_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_billitem`
--

LOCK TABLES `vrs_billitem` WRITE;
/*!40000 ALTER TABLE `vrs_billitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_billitem_subitem`
--

DROP TABLE IF EXISTS `vrs_billitem_subitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_billitem_subitem` (
  `objid` varchar(50) NOT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_market_penalty_billitem_billitemrefid` (`billitemrefid`) USING BTREE,
  CONSTRAINT `fk_vrs_billitem_subitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_billitem_subitem_objid` FOREIGN KEY (`objid`) REFERENCES `vrs_abstract_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_billitem_subitem`
--

LOCK TABLES `vrs_billitem_subitem` WRITE;
/*!40000 ALTER TABLE `vrs_billitem_subitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_billitem_subitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_credit_billitem`
--

DROP TABLE IF EXISTS `vrs_credit_billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_credit_billitem` (
  `objid` varchar(50) NOT NULL,
  `paymentid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_market_credit_billitem_paymentid` (`paymentid`) USING BTREE,
  CONSTRAINT `fk_vrs_credit_billitem_objid` FOREIGN KEY (`objid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_credit_billitem_paymentid` FOREIGN KEY (`paymentid`) REFERENCES `vrs_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_credit_billitem`
--

LOCK TABLES `vrs_credit_billitem` WRITE;
/*!40000 ALTER TABLE `vrs_credit_billitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_credit_billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_credit_paymentitem`
--

DROP TABLE IF EXISTS `vrs_credit_paymentitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_credit_paymentitem` (
  `objid` varchar(50) NOT NULL,
  `credititemid` varchar(50) DEFAULT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_eboss_credit_paymentitem_billitemrefid` (`billitemrefid`) USING BTREE,
  KEY `fk_eboss_credit_paymentitem_billid` (`billid`) USING BTREE,
  KEY `fk_market_credit_paymentitem_credititemid` (`credititemid`) USING BTREE,
  CONSTRAINT `fk_vrs_credit_paymentitem_billid` FOREIGN KEY (`billid`) REFERENCES `vrs_bill` (`objid`),
  CONSTRAINT `fk_vrs_credit_paymentitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_credit_paymentitem_credititemid` FOREIGN KEY (`credititemid`) REFERENCES `vrs_credit_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_credit_paymentitem`
--

LOCK TABLES `vrs_credit_paymentitem` WRITE;
/*!40000 ALTER TABLE `vrs_credit_paymentitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_credit_paymentitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_date_extension`
--

DROP TABLE IF EXISTS `vrs_date_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_date_extension` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `particulars` varchar(50) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_date_extension_vehicletypeid_year` (`vehicletypeid`,`year`),
  CONSTRAINT `fk_vrs_date_extension_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_date_extension`
--

LOCK TABLES `vrs_date_extension` WRITE;
/*!40000 ALTER TABLE `vrs_date_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_date_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_detail_info`
--

DROP TABLE IF EXISTS `vrs_detail_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_detail_info` (
  `objid` varchar(50) NOT NULL,
  `fieldid` varchar(50) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `decimalvalue` decimal(18,2) DEFAULT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `datevalue` date DEFAULT NULL,
  `booleanvalue` int(11) DEFAULT NULL,
  `lov_objid` varchar(50) DEFAULT NULL,
  `lookup_objid` varchar(50) DEFAULT NULL,
  `lookup_title` varchar(50) DEFAULT NULL,
  `objvalue` mediumtext,
  `txnid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_vrs_account_info_fieldid` (`fieldid`),
  KEY `fk_vrs_detail_info_txnid` (`txnid`),
  KEY `fk_vrs_detail_info_supersededid` (`supersededid`),
  CONSTRAINT `fk_vrs_detail_info_fieldid` FOREIGN KEY (`fieldid`) REFERENCES `vrs_vehicletype_field` (`objid`),
  CONSTRAINT `fk_vrs_detail_info_supersededid` FOREIGN KEY (`supersededid`) REFERENCES `vrs_detail_info` (`objid`),
  CONSTRAINT `fk_vrs_detail_info_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_detail_info`
--

LOCK TABLES `vrs_detail_info` WRITE;
/*!40000 ALTER TABLE `vrs_detail_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_detail_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_doc`
--

DROP TABLE IF EXISTS `vrs_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_doc` (
  `objid` varchar(50) NOT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(50) DEFAULT NULL,
  `doctypeid` varchar(50) DEFAULT NULL,
  `issuanceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_doc_txnid_doctypeid` (`txnid`,`doctypeid`),
  KEY `fk_vrs_doc_doctypeid` (`doctypeid`) USING BTREE,
  CONSTRAINT `fk_vrs_doc_doctypeid` FOREIGN KEY (`doctypeid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_doc_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_doc`
--

LOCK TABLES `vrs_doc` WRITE;
/*!40000 ALTER TABLE `vrs_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_doc_issuance`
--

DROP TABLE IF EXISTS `vrs_doc_issuance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_doc_issuance` (
  `objid` varchar(50) NOT NULL,
  `issueno` varchar(50) DEFAULT NULL,
  `dtissued` date DEFAULT NULL,
  `issuer_objid` varchar(50) DEFAULT NULL,
  `issuer_name` varchar(255) DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `docid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `fk_vrs_doc_issuance_docid` (`docid`) USING BTREE,
  CONSTRAINT `fk_vrs_doc_issuance_docid` FOREIGN KEY (`docid`) REFERENCES `vrs_doc` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_doc_issuance`
--

LOCK TABLES `vrs_doc_issuance` WRITE;
/*!40000 ALTER TABLE `vrs_doc_issuance` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_doc_issuance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_doctype`
--

DROP TABLE IF EXISTS `vrs_doctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_doctype` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `docclass` varchar(255) DEFAULT NULL,
  `sortorder` smallint(1) DEFAULT NULL,
  `templateid` varchar(50) DEFAULT NULL,
  `controlnopattern` varchar(50) DEFAULT NULL,
  `system` int(1) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `endorserid` varchar(50) DEFAULT NULL,
  `approverid` varchar(50) DEFAULT NULL,
  `reportid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `version` int(255) DEFAULT NULL,
  `issuetype` int(11) DEFAULT NULL,
  `autoemail` int(1) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_vrs_doctype_supersededid` (`supersededid`),
  KEY `fk_vrs_doctype_endorserid` (`endorserid`) USING BTREE,
  KEY `fk_vrs_doctype_approverid` (`approverid`) USING BTREE,
  KEY `fk_vrs_doctype_role` (`role`) USING BTREE,
  KEY `fk_vrs_doctype_template` (`templateid`) USING BTREE,
  KEY `uix_vrs_doctype_uid` (`uid`),
  KEY `fk_vrs_doctype_vehicletypeid` (`vehicletypeid`),
  CONSTRAINT `fk_vrs_doctype_approverid` FOREIGN KEY (`approverid`) REFERENCES `sys_signature` (`objid`),
  CONSTRAINT `fk_vrs_doctype_endorserid` FOREIGN KEY (`endorserid`) REFERENCES `sys_signature` (`objid`),
  CONSTRAINT `fk_vrs_doctype_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`),
  CONSTRAINT `fk_vrs_doctype_supersededid` FOREIGN KEY (`supersededid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_doctype_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_doctype`
--

LOCK TABLES `vrs_doctype` WRITE;
/*!40000 ALTER TABLE `vrs_doctype` DISABLE KEYS */;
INSERT INTO `vrs_doctype` VALUES ('MTOP_FRANCHISE_PERMIT','DRAFT','MTOP_FRANCHISE_PERMIT','MTOP FRANCHISE PERMIT','OTHER',0,'mtop_permit',NULL,NULL,NULL,NULL,NULL,'vrs_doc_report',NULL,NULL,'mtop',0,2,0),('MTOP_PERMIT','DRAFT','MTOP_PERMIT','MTOP PERMIT','PRIMARY',0,'mtop_permit','MTOP[yyyyMM][%06d]',NULL,NULL,NULL,NULL,'vrs_doc_report',NULL,NULL,'mtop',0,1,0);
/*!40000 ALTER TABLE `vrs_doctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_driver`
--

DROP TABLE IF EXISTS `vrs_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_driver` (
  `objid` varchar(50) CHARACTER SET utf8 NOT NULL,
  `controlno` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vehicletypeid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `entity_objid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `entity_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `entity_address_objid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `entity_address_text` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `license_refno` varchar(50) DEFAULT NULL,
  `license_expirydate` date DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_vehicle_driver_controlno` (`controlno`) USING BTREE,
  UNIQUE KEY `uix_vehicle_driver_entityid_vehicletypeid` (`entity_objid`,`vehicletypeid`) USING BTREE,
  KEY `vehicle_driver_vehicletypeid` (`vehicletypeid`) USING BTREE,
  CONSTRAINT `vehicle_driver_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_driver`
--

LOCK TABLES `vrs_driver` WRITE;
/*!40000 ALTER TABLE `vrs_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_franchise`
--

DROP TABLE IF EXISTS `vrs_franchise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_franchise` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `controlno` varchar(50) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_franchise_vehicletypeid` (`vehicletypeid`),
  KEY `fk_vrs_franchise_acctid` (`acctid`),
  CONSTRAINT `fk_vrs_franchise_acctid` FOREIGN KEY (`acctid`) REFERENCES `vrs_account` (`objid`),
  CONSTRAINT `fk_vrs_franchise_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_franchise`
--

LOCK TABLES `vrs_franchise` WRITE;
/*!40000 ALTER TABLE `vrs_franchise` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_franchise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_header_info`
--

DROP TABLE IF EXISTS `vrs_header_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_header_info` (
  `objid` varchar(50) NOT NULL,
  `owner_objid` varchar(50) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_address_text` varchar(255) DEFAULT NULL,
  `owner_entitytype` varchar(50) DEFAULT NULL,
  `owner_profileid` varchar(50) DEFAULT NULL,
  `owner_profileno` varchar(50) DEFAULT NULL,
  `owner_firstname` varchar(255) DEFAULT NULL,
  `owner_lastname` varchar(255) DEFAULT NULL,
  `owner_middlename` varchar(255) DEFAULT NULL,
  `owner_resident` smallint(1) DEFAULT NULL,
  `owner_address_objid` varchar(50) DEFAULT NULL,
  `owner_address_unitno` varchar(50) DEFAULT NULL,
  `owner_address_bldgno` varchar(50) DEFAULT NULL,
  `owner_address_bldgname` varchar(255) DEFAULT NULL,
  `owner_address_street` varchar(255) DEFAULT NULL,
  `owner_address_subdivision` varchar(255) DEFAULT NULL,
  `owner_address_barangay_objid` varchar(50) DEFAULT NULL,
  `owner_address_barangay_name` varchar(255) DEFAULT NULL,
  `owner_address_citymunicipality` varchar(255) DEFAULT NULL,
  `owner_address_province` varchar(255) DEFAULT NULL,
  `owner_tin` varchar(255) DEFAULT NULL,
  `owner_email` varchar(255) DEFAULT NULL,
  `owner_mobileno` varchar(50) DEFAULT NULL,
  `owner_phoneno` varchar(50) DEFAULT NULL,
  `owner_id_type_name` varchar(255) DEFAULT NULL,
  `owner_id_idno` varchar(50) DEFAULT NULL,
  `owner_id_placeissued` varchar(255) DEFAULT NULL,
  `owner_id_dtissued` date DEFAULT NULL,
  `address_text` varchar(255) DEFAULT NULL,
  `address_unitno` varchar(50) DEFAULT NULL,
  `address_bldgno` varchar(50) DEFAULT NULL,
  `address_bldgname` varchar(50) DEFAULT NULL,
  `address_street` varchar(50) DEFAULT NULL,
  `address_subdivision` varchar(50) DEFAULT NULL,
  `address_barangay_objid` varchar(50) DEFAULT NULL,
  `address_barangay_name` varchar(50) DEFAULT NULL,
  `acctgroupid` varchar(50) DEFAULT NULL,
  `contact_phoneno` varchar(50) DEFAULT NULL,
  `contact_mobileno` varchar(50) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_eboss_account_info_txnid` (`txnid`) USING BTREE,
  KEY `fk_vrs_header_info_acctgroupid` (`acctgroupid`),
  CONSTRAINT `fk_vrs_header_info_acctgroupid` FOREIGN KEY (`acctgroupid`) REFERENCES `vrs_account_group` (`objid`),
  CONSTRAINT `fk_vrs_header_info_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_header_info`
--

LOCK TABLES `vrs_header_info` WRITE;
/*!40000 ALTER TABLE `vrs_header_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_header_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_itemaccount`
--

DROP TABLE IF EXISTS `vrs_itemaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_itemaccount` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `item_objid` varchar(50) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_fund_objid` varchar(50) DEFAULT NULL,
  `item_fund_title` varchar(50) DEFAULT NULL,
  `sortorder` int(10) DEFAULT NULL,
  `itemtype` varchar(50) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_itemaccount`
--

LOCK TABLES `vrs_itemaccount` WRITE;
/*!40000 ALTER TABLE `vrs_itemaccount` DISABLE KEYS */;
INSERT INTO `vrs_itemaccount` VALUES ('ADVANCE_PAYMENT_MTOP','ADVANCE PAYMENT (MTOP)',NULL,NULL,NULL,NULL,NULL,1,'CREDIT',NULL),('MAYORS_PERMIT_MTOP','MAYORS PERMIT (MTOP)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('PENALTY_MTOP','PENALTY (MTOP)',NULL,NULL,NULL,NULL,NULL,200,'FEE',NULL),('SIDECAR_PLATE_MTOP','SIDECAR PLATE (MTOP)',NULL,NULL,NULL,NULL,NULL,3,'FEE',NULL),('SUPERVISING_FEE_MTOP','SUPERVISING FEE (MTOP)',NULL,NULL,NULL,NULL,NULL,2,'FEE',NULL);
/*!40000 ALTER TABLE `vrs_itemaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_payment`
--

DROP TABLE IF EXISTS `vrs_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_payment` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  `voided` int(255) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_payment`
--

LOCK TABLES `vrs_payment` WRITE;
/*!40000 ALTER TABLE `vrs_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_paymentitem`
--

DROP TABLE IF EXISTS `vrs_paymentitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_paymentitem` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `voidamount` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_market_payment_item_parentid` (`parentid`) USING BTREE,
  KEY `fk_market_paymentitem_billitemid` (`billitemrefid`) USING BTREE,
  CONSTRAINT `fk_vrs_paymentitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_paymentitem_parentid` FOREIGN KEY (`parentid`) REFERENCES `vrs_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_paymentitem`
--

LOCK TABLES `vrs_paymentitem` WRITE;
/*!40000 ALTER TABLE `vrs_paymentitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_paymentitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_txn`
--

DROP TABLE IF EXISTS `vrs_txn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_txn` (
  `objid` varchar(50) NOT NULL,
  `appno` varchar(50) DEFAULT NULL,
  `appdate` date DEFAULT NULL,
  `trackingno` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `txntypeid` varchar(50) DEFAULT NULL,
  `txnmode` varchar(20) DEFAULT NULL,
  `headerinfoid` varchar(50) DEFAULT NULL,
  `acctyearid` varchar(50) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `dtposted` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_vrs_txn_supersededid` (`supersededid`) USING BTREE,
  KEY `fk_vrs_txn_txntypeid` (`txntypeid`),
  KEY `fk_vrs_txn_acctyearid` (`acctyearid`),
  KEY `fk_vrs_txn_ownerinfoid` (`headerinfoid`),
  KEY `fk_vrs_txn_billid` (`billid`),
  CONSTRAINT `fk_vrs_txn_acctyearid` FOREIGN KEY (`acctyearid`) REFERENCES `vrs_account_year` (`objid`),
  CONSTRAINT `fk_vrs_txn_billid` FOREIGN KEY (`billid`) REFERENCES `vrs_bill` (`objid`),
  CONSTRAINT `fk_vrs_txn_ownerinfoid` FOREIGN KEY (`headerinfoid`) REFERENCES `vrs_header_info` (`objid`),
  CONSTRAINT `fk_vrs_txn_txntype` FOREIGN KEY (`txntypeid`) REFERENCES `vrs_txntype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_txn`
--

LOCK TABLES `vrs_txn` WRITE;
/*!40000 ALTER TABLE `vrs_txn` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_txn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_txn_task`
--

DROP TABLE IF EXISTS `vrs_txn_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_txn_task` (
  `taskid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `prevtaskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`taskid`) USING BTREE,
  KEY `FK_obo_subproc_task_refid` (`refid`) USING BTREE,
  KEY `ix_refid` (`refid`) USING BTREE,
  KEY `ix_parentprocessid` (`parentprocessid`) USING BTREE,
  KEY `ix_startdate` (`startdate`) USING BTREE,
  KEY `ix_enddate` (`enddate`) USING BTREE,
  KEY `ix_assignee_objid` (`assignee_objid`) USING BTREE,
  KEY `ix_actor_objid` (`actor_objid`) USING BTREE,
  KEY `ix_dtcreated` (`dtcreated`) USING BTREE,
  KEY `ix_prevtaskid` (`prevtaskid`) USING BTREE,
  KEY `fk_building_permit_task_state` (`state`) USING BTREE,
  CONSTRAINT `fx_vrs_txn_task_refid` FOREIGN KEY (`refid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_txn_task`
--

LOCK TABLES `vrs_txn_task` WRITE;
/*!40000 ALTER TABLE `vrs_txn_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_txn_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_txntype`
--

DROP TABLE IF EXISTS `vrs_txntype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_txntype` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sortorder` int(1) DEFAULT NULL,
  `txnclass` int(1) DEFAULT NULL,
  `processname` varchar(50) DEFAULT NULL,
  `controlnopattern` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_eboss_txntype_processname` (`processname`) USING BTREE,
  CONSTRAINT `fk_vrs_txntype_processname` FOREIGN KEY (`processname`) REFERENCES `sys_wf` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_txntype`
--

LOCK TABLES `vrs_txntype` WRITE;
/*!40000 ALTER TABLE `vrs_txntype` DISABLE KEYS */;
INSERT INTO `vrs_txntype` VALUES ('CHANGE_INFO','Change Info',6,1,'vrs_change_info','VCI[yyyy][MM][%06d]'),('CLOSE_ACCOUNT','Close Account',5,2,'vrs_close_account','VCA[yyyy][MM][%06d]'),('FRANCHISE_RENEWAL','Franchise Renewal',7,1,'vrs_franchise_renewal','VRFR[yyyy][MM][%06d]'),('NEW','New Vehicle',1,0,'vrsbasic','VCA[yyyy][MM][%06d]'),('RENEWAL','Renewal',2,0,'vrsbasic','VR[yyyy][MM][%06d]');
/*!40000 ALTER TABLE `vrs_txntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_variable`
--

DROP TABLE IF EXISTS `vrs_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_variable` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `datatype` varchar(100) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sortorder` smallint(3) DEFAULT NULL,
  `system` smallint(3) DEFAULT NULL,
  `arrayvalues` text,
  `unit` varchar(100) DEFAULT NULL,
  `lookuplistname` varchar(50) DEFAULT NULL,
  `multiselect` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `ix_state` (`state`) USING BTREE,
  KEY `ix_caption` (`caption`) USING BTREE,
  KEY `ix_datatype` (`datatype`) USING BTREE,
  KEY `ix_category` (`category`) USING BTREE,
  KEY `ix_sortorder` (`sortorder`) USING BTREE,
  KEY `ix_system` (`system`) USING BTREE,
  KEY `ix_unit` (`unit`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_variable`
--

LOCK TABLES `vrs_variable` WRITE;
/*!40000 ALTER TABLE `vrs_variable` DISABLE KEYS */;
INSERT INTO `vrs_variable` VALUES ('BODYNO','DRAFT','Body No',NULL,'string',NULL,3,0,'[]',NULL,NULL,NULL),('CHASSISNO','DRAFT','Chassis No',NULL,'string',NULL,5,0,'[]',NULL,NULL,NULL),('COLOR','DRAFT','Color',NULL,'string',NULL,10,0,'[]',NULL,NULL,NULL),('ENGINENO','DRAFT','Engine No.',NULL,'string',NULL,2,0,'[]',NULL,NULL,NULL),('MAKE','DRAFT','Make',NULL,'string',NULL,10,0,'[]',NULL,NULL,NULL),('MODEL','DRAFT','Model',NULL,'string',NULL,6,0,'[]',NULL,NULL,NULL),('PLATENO','DRAFT','Plate No.',NULL,'string',NULL,1,0,'[]',NULL,NULL,NULL),('SIDECARNO','DRAFT','Side Car No.',NULL,'string',NULL,4,0,'[]',NULL,NULL,NULL);
/*!40000 ALTER TABLE `vrs_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_vehicletype`
--

DROP TABLE IF EXISTS `vrs_vehicletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_vehicletype` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `controlpattern` varchar(50) DEFAULT NULL,
  `acctnopattern` varchar(50) DEFAULT NULL,
  `indexno` int(11) DEFAULT NULL,
  `renewalfrequency` varchar(10) DEFAULT NULL,
  `drivernopattern` varchar(50) DEFAULT NULL,
  `maxunitperowner` int(255) DEFAULT NULL,
  `iconid` varchar(50) DEFAULT NULL,
  `permitdoctypeid` varchar(50) DEFAULT NULL,
  `franchisedoctypeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  KEY `fk_vrs_vehicletype_iconid` (`iconid`),
  KEY `fk_vrs_vehicletype_permitdoctypeid` (`permitdoctypeid`),
  KEY `fk_vrs_vehicletype_franchisedoctypeid` (`franchisedoctypeid`),
  CONSTRAINT `fk_vrs_vehicletype_franchisedoctypeid` FOREIGN KEY (`franchisedoctypeid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_vehicletype_iconid` FOREIGN KEY (`iconid`) REFERENCES `sys_image` (`objid`),
  CONSTRAINT `fk_vrs_vehicletype_permitdoctypeid` FOREIGN KEY (`permitdoctypeid`) REFERENCES `vrs_doctype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_vehicletype`
--

LOCK TABLES `vrs_vehicletype` WRITE;
/*!40000 ALTER TABLE `vrs_vehicletype` DISABLE KEYS */;
INSERT INTO `vrs_vehicletype` VALUES ('mtop','MTOP','MTOP-[%05d]','MTAC-[%05d]',NULL,NULL,'MTOP[yyyy][MM][%06d]',5,'tricycle','MTOP_PERMIT','MTOP_FRANCHISE_PERMIT');
/*!40000 ALTER TABLE `vrs_vehicletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_vehicletype_field`
--

DROP TABLE IF EXISTS `vrs_vehicletype_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_vehicletype_field` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `required` smallint(255) DEFAULT NULL,
  `textwidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`) USING BTREE,
  UNIQUE KEY `uix_vehicletype_name` (`name`,`vehicletypeid`) USING BTREE,
  KEY `fk_vehicletype_field_vehicletypeid` (`vehicletypeid`) USING BTREE,
  CONSTRAINT `fk_vrs_vehicletype_field_name` FOREIGN KEY (`name`) REFERENCES `vrs_variable` (`objid`),
  CONSTRAINT `fk_vrs_vehicletype_field_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_vehicletype_field`
--

LOCK TABLES `vrs_vehicletype_field` WRITE;
/*!40000 ALTER TABLE `vrs_vehicletype_field` DISABLE KEYS */;
INSERT INTO `vrs_vehicletype_field` VALUES ('mtop-BODYNO','mtop','BODYNO','Body No','UNIT INFO',4,NULL,0),('mtop-CHASSISNO','mtop','CHASSISNO','Chassis No','UNIT INFO',3,NULL,0),('mtop-COLOR','mtop','COLOR','Color','UNIT INFO',8,NULL,0),('mtop-ENGINENO','mtop','ENGINENO','Engine No.','UNIT INFO',2,NULL,0),('mtop-MAKE','mtop','MAKE','Make','UNIT INFO',6,NULL,0),('mtop-MODEL','mtop','MODEL','Model','UNIT INFO',7,NULL,0),('mtop-PLATENO','mtop','PLATENO','Plate No.','UNIT INFO',1,NULL,0),('mtop-SIDECARNO','mtop','SIDECARNO','Side Car No.','UNIT INFO',5,NULL,0);
/*!40000 ALTER TABLE `vrs_vehicletype_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_vrs_account`
--

DROP TABLE IF EXISTS `vw_vrs_account`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_account`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_account` AS SELECT 
 1 AS `objid`,
 1 AS `franchiseid`,
 1 AS `headerinfoid`,
 1 AS `acctno`,
 1 AS `acctyearid`,
 1 AS `franchiseno`,
 1 AS `vehicletypeid`,
 1 AS `vehicletype_objid`,
 1 AS `vehicletype_title`,
 1 AS `vehicletype_permitdoctypeid`,
 1 AS `vehicletype_franchisedoctypeid`,
 1 AS `activeyear`,
 1 AS `lastyearrenewed`,
 1 AS `apptype`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `owner_objid`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`,
 1 AS `vehiclepermit_objid`,
 1 AS `vehiclepermit_doctypeid`,
 1 AS `vehiclepermit_issueno`,
 1 AS `vehiclepermit_dtissued`,
 1 AS `vehiclepermit_expirydate`,
 1 AS `franchisepermit_objid`,
 1 AS `franchisepermit_doctypeid`,
 1 AS `franchisepermit_issueno`,
 1 AS `franchisepermit_dtissued`,
 1 AS `franchisepermit_expirydate`,
 1 AS `task_state`,
 1 AS `txnid`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_account_case`
--

DROP TABLE IF EXISTS `vw_vrs_account_case`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_case`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_account_case` AS SELECT 
 1 AS `objid`,
 1 AS `state`,
 1 AS `acctid`,
 1 AS `casetypeid`,
 1 AS `particulars`,
 1 AS `workgroupid`,
 1 AS `supersededid`,
 1 AS `dtissued`,
 1 AS `dtcreated`,
 1 AS `createdby_objid`,
 1 AS `createdby_name`,
 1 AS `refid`,
 1 AS `refno`,
 1 AS `superseded`,
 1 AS `prev_particulars`,
 1 AS `prev_objid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_account_detail_info`
--

DROP TABLE IF EXISTS `vw_vrs_account_detail_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_detail_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_account_detail_info` AS SELECT 
 1 AS `objid`,
 1 AS `fieldid`,
 1 AS `stringvalue`,
 1 AS `decimalvalue`,
 1 AS `intvalue`,
 1 AS `datevalue`,
 1 AS `booleanvalue`,
 1 AS `lov_objid`,
 1 AS `lookup_objid`,
 1 AS `lookup_title`,
 1 AS `objvalue`,
 1 AS `txnid`,
 1 AS `supersededid`,
 1 AS `caption`,
 1 AS `name`,
 1 AS `category`,
 1 AS `sortorder`,
 1 AS `required`,
 1 AS `textwidth`,
 1 AS `datatype`,
 1 AS `acctid`,
 1 AS `superseded`,
 1 AS `posted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_bill`
--

DROP TABLE IF EXISTS `vw_vrs_bill`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_bill`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_bill` AS SELECT 
 1 AS `objid`,
 1 AS `txnid`,
 1 AS `billno`,
 1 AS `billdate`,
 1 AS `duedate`,
 1 AS `validitydate`,
 1 AS `state`,
 1 AS `remarks`,
 1 AS `balanceforward`,
 1 AS `totalpayment`,
 1 AS `interest`,
 1 AS `surcharge`,
 1 AS `amount`,
 1 AS `discount`,
 1 AS `txnmode`,
 1 AS `txntypeid`,
 1 AS `acctid`,
 1 AS `activeyear`,
 1 AS `task_state`,
 1 AS `acctno`,
 1 AS `owner_name`,
 1 AS `franchiseid`,
 1 AS `vehicletypeid`,
 1 AS `txntype_processname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_billitem`
--

DROP TABLE IF EXISTS `vw_vrs_billitem`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_billitem` AS SELECT 
 1 AS `objid`,
 1 AS `billid`,
 1 AS `itemid`,
 1 AS `amount`,
 1 AS `amtpaid`,
 1 AS `remarks`,
 1 AS `uid`,
 1 AS `auto`,
 1 AS `forwarded`,
 1 AS `billdate`,
 1 AS `supersededid`,
 1 AS `particulars`,
 1 AS `balance`,
 1 AS `surcharge`,
 1 AS `interest`,
 1 AS `discount`,
 1 AS `year`,
 1 AS `duedate`,
 1 AS `superseded`,
 1 AS `supersederid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_billitem_subitem`
--

DROP TABLE IF EXISTS `vw_vrs_billitem_subitem`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem_subitem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_billitem_subitem` AS SELECT 
 1 AS `objid`,
 1 AS `billid`,
 1 AS `itemid`,
 1 AS `amount`,
 1 AS `amtpaid`,
 1 AS `remarks`,
 1 AS `uid`,
 1 AS `auto`,
 1 AS `forwarded`,
 1 AS `billdate`,
 1 AS `supersededid`,
 1 AS `billitemrefid`,
 1 AS `balance`,
 1 AS `type`,
 1 AS `superseded`,
 1 AS `supersederid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_detail_info`
--

DROP TABLE IF EXISTS `vw_vrs_detail_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_detail_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_detail_info` AS SELECT 
 1 AS `objid`,
 1 AS `fieldid`,
 1 AS `stringvalue`,
 1 AS `decimalvalue`,
 1 AS `intvalue`,
 1 AS `datevalue`,
 1 AS `booleanvalue`,
 1 AS `lov_objid`,
 1 AS `lookup_objid`,
 1 AS `lookup_title`,
 1 AS `objvalue`,
 1 AS `txnid`,
 1 AS `supersededid`,
 1 AS `name`,
 1 AS `datatype`,
 1 AS `caption`,
 1 AS `superseded`,
 1 AS `posted`,
 1 AS `acctid`,
 1 AS `sortorder`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_doc`
--

DROP TABLE IF EXISTS `vw_vrs_doc`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_doc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_doc` AS SELECT 
 1 AS `objid`,
 1 AS `txnid`,
 1 AS `dtcreated`,
 1 AS `createdby_objid`,
 1 AS `createdby_name`,
 1 AS `doctypeid`,
 1 AS `issuanceid`,
 1 AS `issueno`,
 1 AS `dtissued`,
 1 AS `issuer_objid`,
 1 AS `issuer_name`,
 1 AS `expirydate`,
 1 AS `txn_txntypeid`,
 1 AS `txn_txnmode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_doctype`
--

DROP TABLE IF EXISTS `vw_vrs_doctype`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_doctype`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_doctype` AS SELECT 
 1 AS `objid`,
 1 AS `state`,
 1 AS `name`,
 1 AS `title`,
 1 AS `docclass`,
 1 AS `sortorder`,
 1 AS `templateid`,
 1 AS `controlnopattern`,
 1 AS `system`,
 1 AS `role`,
 1 AS `endorserid`,
 1 AS `approverid`,
 1 AS `reportid`,
 1 AS `supersededid`,
 1 AS `uid`,
 1 AS `vehicletypeid`,
 1 AS `version`,
 1 AS `issuetype`,
 1 AS `autoemail`,
 1 AS `superseded`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_franchise`
--

DROP TABLE IF EXISTS `vw_vrs_franchise`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_franchise`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_franchise` AS SELECT 
 1 AS `objid`,
 1 AS `vehicletypeid`,
 1 AS `controlno`,
 1 AS `acctid`,
 1 AS `franchiseno`,
 1 AS `acctno`,
 1 AS `task_state`,
 1 AS `vehicletype_objid`,
 1 AS `vehicletype_title`,
 1 AS `headerinfoid`,
 1 AS `activeyear`,
 1 AS `txnid`,
 1 AS `acctyearid`,
 1 AS `lastyearrenewed`,
 1 AS `apptype`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `owner_objid`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`,
 1 AS `vehiclepermit_objid`,
 1 AS `vehiclepermit_doctypeid`,
 1 AS `vehiclepermit_issueno`,
 1 AS `vehiclepermit_dtissued`,
 1 AS `vehiclepermit_expirydate`,
 1 AS `franchisepermit_objid`,
 1 AS `franchisepermit_doctypeid`,
 1 AS `franchisepermit_issueno`,
 1 AS `franchisepermit_dtissued`,
 1 AS `franchisepermit_expirydate`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_header_info`
--

DROP TABLE IF EXISTS `vw_vrs_header_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_header_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_header_info` AS SELECT 
 1 AS `objid`,
 1 AS `owner_objid`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `owner_entitytype`,
 1 AS `owner_profileid`,
 1 AS `owner_profileno`,
 1 AS `owner_firstname`,
 1 AS `owner_lastname`,
 1 AS `owner_middlename`,
 1 AS `owner_resident`,
 1 AS `owner_address_objid`,
 1 AS `owner_address_unitno`,
 1 AS `owner_address_bldgno`,
 1 AS `owner_address_bldgname`,
 1 AS `owner_address_street`,
 1 AS `owner_address_subdivision`,
 1 AS `owner_address_barangay_objid`,
 1 AS `owner_address_barangay_name`,
 1 AS `owner_address_citymunicipality`,
 1 AS `owner_address_province`,
 1 AS `owner_tin`,
 1 AS `owner_email`,
 1 AS `owner_mobileno`,
 1 AS `owner_phoneno`,
 1 AS `owner_id_type_name`,
 1 AS `owner_id_idno`,
 1 AS `owner_id_placeissued`,
 1 AS `owner_id_dtissued`,
 1 AS `address_text`,
 1 AS `address_unitno`,
 1 AS `address_bldgno`,
 1 AS `address_bldgname`,
 1 AS `address_street`,
 1 AS `address_subdivision`,
 1 AS `address_barangay_objid`,
 1 AS `address_barangay_name`,
 1 AS `acctgroupid`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`,
 1 AS `txnid`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`,
 1 AS `acctgroup_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_superseded_detail_info`
--

DROP TABLE IF EXISTS `vw_vrs_superseded_detail_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_superseded_detail_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_superseded_detail_info` AS SELECT 
 1 AS `supersededid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_txn`
--

DROP TABLE IF EXISTS `vw_vrs_txn`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_txn`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_txn` AS SELECT 
 1 AS `objid`,
 1 AS `appno`,
 1 AS `appdate`,
 1 AS `trackingno`,
 1 AS `state`,
 1 AS `txntypeid`,
 1 AS `txnmode`,
 1 AS `headerinfoid`,
 1 AS `acctyearid`,
 1 AS `txndate`,
 1 AS `dtposted`,
 1 AS `createdby_objid`,
 1 AS `createdby_name`,
 1 AS `dtcreated`,
 1 AS `billid`,
 1 AS `supersededid`,
 1 AS `taskid`,
 1 AS `txntype_title`,
 1 AS `txntype_processname`,
 1 AS `task_state`,
 1 AS `task_dtcreated`,
 1 AS `task_startdate`,
 1 AS `task_enddate`,
 1 AS `task_assignee_objid`,
 1 AS `task_assignee_name`,
 1 AS `task_actor_objid`,
 1 AS `task_actor_name`,
 1 AS `task_title`,
 1 AS `task_tracktime`,
 1 AS `task_properties`,
 1 AS `acctid`,
 1 AS `acctno`,
 1 AS `activeyear`,
 1 AS `lastyearrenewed`,
 1 AS `apptype`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`,
 1 AS `acctgroup_description`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `franchiseno`,
 1 AS `franchiseid`,
 1 AS `vehicletypeid`,
 1 AS `vehicletype_title`,
 1 AS `vehicletype_permitdoctypeid`,
 1 AS `vehicletype_franchisedoctypeid`,
 1 AS `vehiclepermitid`,
 1 AS `franchisepermitid`,
 1 AS `vehiclepermit_objid`,
 1 AS `vehiclepermit_doctypeid`,
 1 AS `vehiclepermit_issueno`,
 1 AS `vehiclepermit_dtissued`,
 1 AS `vehiclepermit_expirydate`,
 1 AS `franchisepermit_objid`,
 1 AS `franchisepermit_doctypeid`,
 1 AS `franchisepermit_issueno`,
 1 AS `franchisepermit_dtissued`,
 1 AS `franchisepermit_expirydate`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_vehicletype_field`
--

DROP TABLE IF EXISTS `vw_vrs_vehicletype_field`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_vehicletype_field`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_vehicletype_field` AS SELECT 
 1 AS `objid`,
 1 AS `vehicletypeid`,
 1 AS `name`,
 1 AS `caption`,
 1 AS `category`,
 1 AS `sortorder`,
 1 AS `required`,
 1 AS `textwidth`,
 1 AS `datatype`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_vrs_account`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_account`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_account` AS select `acct`.`objid` AS `objid`,`acct`.`franchiseid` AS `franchiseid`,`acct`.`headerinfoid` AS `headerinfoid`,`acct`.`acctno` AS `acctno`,`acct`.`acctyearid` AS `acctyearid`,`vf`.`controlno` AS `franchiseno`,`vt`.`objid` AS `vehicletypeid`,`vt`.`objid` AS `vehicletype_objid`,`vt`.`title` AS `vehicletype_title`,`vt`.`permitdoctypeid` AS `vehicletype_permitdoctypeid`,`vt`.`franchisedoctypeid` AS `vehicletype_franchisedoctypeid`,`ay`.`activeyear` AS `activeyear`,`ay`.`lastyearrenewed` AS `lastyearrenewed`,`txn`.`txntypeid` AS `apptype`,`o`.`owner_name` AS `owner_name`,`o`.`owner_address_text` AS `owner_address_text`,`o`.`owner_objid` AS `owner_objid`,`o`.`contact_phoneno` AS `contact_phoneno`,`o`.`contact_mobileno` AS `contact_mobileno`,`o`.`contact_email` AS `contact_email`,`vp`.`objid` AS `vehiclepermit_objid`,`vdoc`.`doctypeid` AS `vehiclepermit_doctypeid`,`vp`.`issueno` AS `vehiclepermit_issueno`,`vp`.`dtissued` AS `vehiclepermit_dtissued`,`vp`.`expirydate` AS `vehiclepermit_expirydate`,`fp`.`objid` AS `franchisepermit_objid`,`fdoc`.`doctypeid` AS `franchisepermit_doctypeid`,`fp`.`issueno` AS `franchisepermit_issueno`,`fp`.`dtissued` AS `franchisepermit_dtissued`,`fp`.`expirydate` AS `franchisepermit_expirydate`,`tsk`.`state` AS `task_state`,`ay`.`txnid` AS `txnid`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath` from (((((((((((`vrs_account` `acct` join `vrs_franchise` `vf` on((`acct`.`franchiseid` = `vf`.`objid`))) join `vrs_vehicletype` `vt` on((`vf`.`vehicletypeid` = `vt`.`objid`))) join `vrs_account_year` `ay` on((`acct`.`acctyearid` = `ay`.`objid`))) join `vrs_header_info` `o` on((`acct`.`headerinfoid` = `o`.`objid`))) join `vrs_txn` `txn` on((`ay`.`txnid` = `txn`.`objid`))) join `vrs_txn_task` `tsk` on((`txn`.`taskid` = `tsk`.`taskid`))) join `vrs_account_group` `grp` on((`o`.`acctgroupid` = `grp`.`objid`))) left join `vrs_doc_issuance` `vp` on((`ay`.`vehiclepermitid` = `vp`.`objid`))) left join `vrs_doc` `vdoc` on((`vdoc`.`issuanceid` = `vp`.`objid`))) left join `vrs_doc_issuance` `fp` on((`ay`.`franchisepermitid` = `fp`.`objid`))) left join `vrs_doc` `fdoc` on((`fdoc`.`issuanceid` = `fp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_account_case`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_case`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_account_case` AS select `ac`.`objid` AS `objid`,`ac`.`state` AS `state`,`ac`.`acctid` AS `acctid`,`ac`.`casetypeid` AS `casetypeid`,`ac`.`particulars` AS `particulars`,`ac`.`workgroupid` AS `workgroupid`,`ac`.`supersededid` AS `supersededid`,`ac`.`dtissued` AS `dtissued`,`ac`.`dtcreated` AS `dtcreated`,`ac`.`createdby_objid` AS `createdby_objid`,`ac`.`createdby_name` AS `createdby_name`,`ac`.`refid` AS `refid`,`ac`.`refno` AS `refno`,(case when isnull(`superseder`.`objid`) then 0 else 1 end) AS `superseded`,`prev`.`particulars` AS `prev_particulars`,`prev`.`objid` AS `prev_objid` from ((`vrs_account_case` `ac` left join `vrs_account_case` `superseder` on((`ac`.`objid` = `superseder`.`supersededid`))) left join `vrs_account_case` `prev` on((`prev`.`objid` = `ac`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_account_detail_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_detail_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_account_detail_info` AS select `di`.`objid` AS `objid`,`di`.`fieldid` AS `fieldid`,`di`.`stringvalue` AS `stringvalue`,`di`.`decimalvalue` AS `decimalvalue`,`di`.`intvalue` AS `intvalue`,`di`.`datevalue` AS `datevalue`,`di`.`booleanvalue` AS `booleanvalue`,`di`.`lov_objid` AS `lov_objid`,`di`.`lookup_objid` AS `lookup_objid`,`di`.`lookup_title` AS `lookup_title`,`di`.`objvalue` AS `objvalue`,`di`.`txnid` AS `txnid`,`di`.`supersededid` AS `supersededid`,`vf`.`caption` AS `caption`,`vf`.`name` AS `name`,`vf`.`category` AS `category`,`vf`.`sortorder` AS `sortorder`,`vf`.`required` AS `required`,`vf`.`textwidth` AS `textwidth`,`vf`.`datatype` AS `datatype`,`ay`.`acctid` AS `acctid`,(case when isnull(`sup`.`supersededid`) then 0 else 1 end) AS `superseded`,1 AS `posted` from (((((`vrs_detail_info` `di` join `vrs_txn` `txn` on((`di`.`txnid` = `txn`.`objid`))) join `vrs_txn_task` `vt` on((`txn`.`taskid` = `vt`.`taskid`))) join `vrs_account_year` `ay` on((`txn`.`acctyearid` = `ay`.`objid`))) join `vw_vrs_vehicletype_field` `vf` on((`di`.`fieldid` = `vf`.`objid`))) left join `vw_vrs_superseded_detail_info` `sup` on((`sup`.`supersededid` = `di`.`objid`))) where ((`vt`.`state` = 'end') and isnull(`sup`.`supersededid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_bill`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_bill`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_bill` AS select `b`.`objid` AS `objid`,`b`.`txnid` AS `txnid`,`b`.`billno` AS `billno`,`b`.`billdate` AS `billdate`,`b`.`duedate` AS `duedate`,`b`.`validitydate` AS `validitydate`,`b`.`state` AS `state`,`b`.`remarks` AS `remarks`,`b`.`balanceforward` AS `balanceforward`,`b`.`totalpayment` AS `totalpayment`,`b`.`interest` AS `interest`,`b`.`surcharge` AS `surcharge`,`b`.`amount` AS `amount`,`b`.`discount` AS `discount`,`b`.`txnmode` AS `txnmode`,`vt`.`txntypeid` AS `txntypeid`,`ay`.`acctid` AS `acctid`,`ay`.`activeyear` AS `activeyear`,`tsk`.`state` AS `task_state`,`va`.`acctno` AS `acctno`,`o`.`owner_name` AS `owner_name`,`vf`.`objid` AS `franchiseid`,`vf`.`vehicletypeid` AS `vehicletypeid`,`typ`.`processname` AS `txntype_processname` from (((((((`vrs_bill` `b` join `vrs_txn` `vt` on((`b`.`txnid` = `vt`.`objid`))) join `vrs_txntype` `typ` on((`vt`.`txntypeid` = `typ`.`objid`))) join `vrs_txn_task` `tsk` on((`vt`.`taskid` = `tsk`.`taskid`))) join `vrs_account_year` `ay` on((`vt`.`acctyearid` = `ay`.`objid`))) join `vrs_account` `va` on((`ay`.`acctid` = `va`.`objid`))) join `vrs_header_info` `o` on((`va`.`headerinfoid` = `o`.`objid`))) join `vrs_franchise` `vf` on((`va`.`franchiseid` = `vf`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_billitem`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_billitem` AS select `mbi`.`objid` AS `objid`,`mbi`.`billid` AS `billid`,`mbi`.`itemid` AS `itemid`,`mbi`.`amount` AS `amount`,`mbi`.`amtpaid` AS `amtpaid`,`mbi`.`remarks` AS `remarks`,`mbi`.`uid` AS `uid`,`mbi`.`auto` AS `auto`,`mbi`.`forwarded` AS `forwarded`,`mbi`.`billdate` AS `billdate`,`mbi`.`supersededid` AS `supersededid`,(case when isnull(`mri`.`year`) then concat(`mai`.`title`,' ',`mri`.`year`) else `mai`.`title` end) AS `particulars`,(`mbi`.`amount` - `mbi`.`amtpaid`) AS `balance`,0 AS `surcharge`,0 AS `interest`,0 AS `discount`,`mri`.`year` AS `year`,`mri`.`duedate` AS `duedate`,(case when isnull(`abi`.`objid`) then 0 else 1 end) AS `superseded`,`abi`.`supersededid` AS `supersederid` from (((`vrs_abstract_billitem` `mbi` join `vrs_billitem` `mri` on((`mri`.`objid` = `mbi`.`objid`))) join `vrs_itemaccount` `mai` on((`mbi`.`itemid` = `mai`.`objid`))) left join `vrs_abstract_billitem` `abi` on((`mbi`.`objid` = `abi`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_billitem_subitem`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem_subitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_billitem_subitem` AS select `abi`.`objid` AS `objid`,`abi`.`billid` AS `billid`,`abi`.`itemid` AS `itemid`,`abi`.`amount` AS `amount`,`abi`.`amtpaid` AS `amtpaid`,`abi`.`remarks` AS `remarks`,`abi`.`uid` AS `uid`,`abi`.`auto` AS `auto`,`abi`.`forwarded` AS `forwarded`,`abi`.`billdate` AS `billdate`,`abi`.`supersededid` AS `supersededid`,`pbi`.`billitemrefid` AS `billitemrefid`,(`abi`.`amount` - `abi`.`amtpaid`) AS `balance`,`pbi`.`type` AS `type`,(case when isnull(`xbi`.`objid`) then 0 else 1 end) AS `superseded`,`xbi`.`supersededid` AS `supersederid` from ((`vrs_abstract_billitem` `abi` join `vrs_billitem_subitem` `pbi` on((`pbi`.`objid` = `abi`.`objid`))) left join `vrs_abstract_billitem` `xbi` on((`abi`.`objid` = `xbi`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_detail_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_detail_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_detail_info` AS select `info`.`objid` AS `objid`,`info`.`fieldid` AS `fieldid`,`info`.`stringvalue` AS `stringvalue`,`info`.`decimalvalue` AS `decimalvalue`,`info`.`intvalue` AS `intvalue`,`info`.`datevalue` AS `datevalue`,`info`.`booleanvalue` AS `booleanvalue`,`info`.`lov_objid` AS `lov_objid`,`info`.`lookup_objid` AS `lookup_objid`,`info`.`lookup_title` AS `lookup_title`,`info`.`objvalue` AS `objvalue`,`info`.`txnid` AS `txnid`,`info`.`supersededid` AS `supersededid`,`vf`.`name` AS `name`,`var`.`datatype` AS `datatype`,`var`.`caption` AS `caption`,(case when isnull(`superseder`.`objid`) then 0 else 1 end) AS `superseded`,(case when (`tsk`.`state` = 'end') then 1 else 0 end) AS `posted`,`ay`.`acctid` AS `acctid`,`vf`.`sortorder` AS `sortorder` from ((((((`vrs_detail_info` `info` join `vrs_vehicletype_field` `vf` on((`info`.`fieldid` = `vf`.`objid`))) join `vrs_variable` `var` on((`vf`.`name` = `var`.`objid`))) join `vrs_txn` `txn` on((`info`.`txnid` = `txn`.`objid`))) join `vrs_txn_task` `tsk` on((`txn`.`taskid` = `tsk`.`taskid`))) join `vrs_account_year` `ay` on((`txn`.`acctyearid` = `ay`.`objid`))) left join `vrs_detail_info` `superseder` on((`info`.`objid` = `superseder`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_doc`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_doc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_doc` AS select `doc`.`objid` AS `objid`,`doc`.`txnid` AS `txnid`,`doc`.`dtcreated` AS `dtcreated`,`doc`.`createdby_objid` AS `createdby_objid`,`doc`.`createdby_name` AS `createdby_name`,`doc`.`doctypeid` AS `doctypeid`,`doc`.`issuanceid` AS `issuanceid`,`iss`.`issueno` AS `issueno`,`iss`.`dtissued` AS `dtissued`,`iss`.`issuer_objid` AS `issuer_objid`,`iss`.`issuer_name` AS `issuer_name`,`iss`.`expirydate` AS `expirydate`,`txn`.`txntypeid` AS `txn_txntypeid`,`txn`.`txnmode` AS `txn_txnmode` from ((`vrs_doc` `doc` left join `vrs_doc_issuance` `iss` on((`doc`.`issuanceid` = `iss`.`objid`))) join `vrs_txn` `txn` on((`doc`.`txnid` = `txn`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_doctype`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_doctype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_doctype` AS select `dt`.`objid` AS `objid`,`dt`.`state` AS `state`,`dt`.`name` AS `name`,`dt`.`title` AS `title`,`dt`.`docclass` AS `docclass`,`dt`.`sortorder` AS `sortorder`,`dt`.`templateid` AS `templateid`,`dt`.`controlnopattern` AS `controlnopattern`,`dt`.`system` AS `system`,`dt`.`role` AS `role`,`dt`.`endorserid` AS `endorserid`,`dt`.`approverid` AS `approverid`,`dt`.`reportid` AS `reportid`,`dt`.`supersededid` AS `supersededid`,`dt`.`uid` AS `uid`,`dt`.`vehicletypeid` AS `vehicletypeid`,`dt`.`version` AS `version`,`dt`.`issuetype` AS `issuetype`,`dt`.`autoemail` AS `autoemail`,(case when isnull(`dt2`.`objid`) then 0 else 1 end) AS `superseded` from (`vrs_doctype` `dt` left join `vrs_doctype` `dt2` on((`dt2`.`supersededid` = `dt`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_franchise`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_franchise`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_franchise` AS select `fran`.`objid` AS `objid`,`fran`.`vehicletypeid` AS `vehicletypeid`,`fran`.`controlno` AS `controlno`,`fran`.`acctid` AS `acctid`,`fran`.`controlno` AS `franchiseno`,`va`.`acctno` AS `acctno`,`tsk`.`state` AS `task_state`,`vt`.`objid` AS `vehicletype_objid`,`vt`.`title` AS `vehicletype_title`,`va`.`headerinfoid` AS `headerinfoid`,`ay`.`activeyear` AS `activeyear`,`ay`.`txnid` AS `txnid`,`ay`.`objid` AS `acctyearid`,`ay`.`lastyearrenewed` AS `lastyearrenewed`,`txn`.`txntypeid` AS `apptype`,`o`.`owner_name` AS `owner_name`,`o`.`owner_address_text` AS `owner_address_text`,`o`.`owner_objid` AS `owner_objid`,`o`.`contact_phoneno` AS `contact_phoneno`,`o`.`contact_mobileno` AS `contact_mobileno`,`o`.`contact_email` AS `contact_email`,`vp`.`objid` AS `vehiclepermit_objid`,`vdoc`.`doctypeid` AS `vehiclepermit_doctypeid`,`vp`.`issueno` AS `vehiclepermit_issueno`,`vp`.`dtissued` AS `vehiclepermit_dtissued`,`vp`.`expirydate` AS `vehiclepermit_expirydate`,`fp`.`objid` AS `franchisepermit_objid`,`fdoc`.`doctypeid` AS `franchisepermit_doctypeid`,`fp`.`issueno` AS `franchisepermit_issueno`,`fp`.`dtissued` AS `franchisepermit_dtissued`,`fp`.`expirydate` AS `franchisepermit_expirydate`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath` from (((((((((((`vrs_franchise` `fran` join `vrs_vehicletype` `vt` on((`fran`.`vehicletypeid` = `vt`.`objid`))) left join `vrs_account` `va` on((`fran`.`acctid` = `va`.`objid`))) left join `vrs_header_info` `o` on((`va`.`headerinfoid` = `o`.`objid`))) left join `vrs_account_year` `ay` on((`va`.`acctyearid` = `ay`.`objid`))) left join `vrs_txn` `txn` on((`ay`.`txnid` = `txn`.`objid`))) left join `vrs_txn_task` `tsk` on((`txn`.`taskid` = `tsk`.`taskid`))) left join `vrs_account_group` `grp` on((`o`.`acctgroupid` = `grp`.`objid`))) left join `vrs_doc_issuance` `vp` on((`ay`.`vehiclepermitid` = `vp`.`objid`))) left join `vrs_doc` `vdoc` on((`vdoc`.`issuanceid` = `vp`.`objid`))) left join `vrs_doc_issuance` `fp` on((`ay`.`franchisepermitid` = `fp`.`objid`))) left join `vrs_doc` `fdoc` on((`fdoc`.`issuanceid` = `fp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_header_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_header_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_header_info` AS select `hi`.`objid` AS `objid`,`hi`.`owner_objid` AS `owner_objid`,`hi`.`owner_name` AS `owner_name`,`hi`.`owner_address_text` AS `owner_address_text`,`hi`.`owner_entitytype` AS `owner_entitytype`,`hi`.`owner_profileid` AS `owner_profileid`,`hi`.`owner_profileno` AS `owner_profileno`,`hi`.`owner_firstname` AS `owner_firstname`,`hi`.`owner_lastname` AS `owner_lastname`,`hi`.`owner_middlename` AS `owner_middlename`,`hi`.`owner_resident` AS `owner_resident`,`hi`.`owner_address_objid` AS `owner_address_objid`,`hi`.`owner_address_unitno` AS `owner_address_unitno`,`hi`.`owner_address_bldgno` AS `owner_address_bldgno`,`hi`.`owner_address_bldgname` AS `owner_address_bldgname`,`hi`.`owner_address_street` AS `owner_address_street`,`hi`.`owner_address_subdivision` AS `owner_address_subdivision`,`hi`.`owner_address_barangay_objid` AS `owner_address_barangay_objid`,`hi`.`owner_address_barangay_name` AS `owner_address_barangay_name`,`hi`.`owner_address_citymunicipality` AS `owner_address_citymunicipality`,`hi`.`owner_address_province` AS `owner_address_province`,`hi`.`owner_tin` AS `owner_tin`,`hi`.`owner_email` AS `owner_email`,`hi`.`owner_mobileno` AS `owner_mobileno`,`hi`.`owner_phoneno` AS `owner_phoneno`,`hi`.`owner_id_type_name` AS `owner_id_type_name`,`hi`.`owner_id_idno` AS `owner_id_idno`,`hi`.`owner_id_placeissued` AS `owner_id_placeissued`,`hi`.`owner_id_dtissued` AS `owner_id_dtissued`,`hi`.`address_text` AS `address_text`,`hi`.`address_unitno` AS `address_unitno`,`hi`.`address_bldgno` AS `address_bldgno`,`hi`.`address_bldgname` AS `address_bldgname`,`hi`.`address_street` AS `address_street`,`hi`.`address_subdivision` AS `address_subdivision`,`hi`.`address_barangay_objid` AS `address_barangay_objid`,`hi`.`address_barangay_name` AS `address_barangay_name`,`hi`.`acctgroupid` AS `acctgroupid`,`hi`.`contact_phoneno` AS `contact_phoneno`,`hi`.`contact_mobileno` AS `contact_mobileno`,`hi`.`contact_email` AS `contact_email`,`hi`.`txnid` AS `txnid`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath`,`grp`.`description` AS `acctgroup_description` from (`vrs_header_info` `hi` join `vrs_account_group` `grp` on((`hi`.`acctgroupid` = `grp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_superseded_detail_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_superseded_detail_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_superseded_detail_info` AS select `di`.`supersededid` AS `supersededid` from ((`vrs_detail_info` `di` join `vrs_txn` `txn` on((`di`.`txnid` = `txn`.`objid`))) join `vrs_txn_task` `tsk` on((`tsk`.`taskid` = `txn`.`taskid`))) where (`tsk`.`state` = 'end') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_txn`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_txn`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_txn` AS select `txn`.`objid` AS `objid`,`txn`.`appno` AS `appno`,`txn`.`appdate` AS `appdate`,`txn`.`trackingno` AS `trackingno`,`txn`.`state` AS `state`,`txn`.`txntypeid` AS `txntypeid`,`txn`.`txnmode` AS `txnmode`,`txn`.`headerinfoid` AS `headerinfoid`,`txn`.`acctyearid` AS `acctyearid`,`txn`.`txndate` AS `txndate`,`txn`.`dtposted` AS `dtposted`,`txn`.`createdby_objid` AS `createdby_objid`,`txn`.`createdby_name` AS `createdby_name`,`txn`.`dtcreated` AS `dtcreated`,`txn`.`billid` AS `billid`,`txn`.`supersededid` AS `supersededid`,`txn`.`taskid` AS `taskid`,`typ`.`title` AS `txntype_title`,`typ`.`processname` AS `txntype_processname`,`t`.`state` AS `task_state`,`t`.`dtcreated` AS `task_dtcreated`,`t`.`startdate` AS `task_startdate`,`t`.`enddate` AS `task_enddate`,`t`.`assignee_objid` AS `task_assignee_objid`,`t`.`assignee_name` AS `task_assignee_name`,`t`.`actor_objid` AS `task_actor_objid`,`t`.`actor_name` AS `task_actor_name`,`sn`.`title` AS `task_title`,`sn`.`tracktime` AS `task_tracktime`,`sn`.`properties` AS `task_properties`,`ay`.`acctid` AS `acctid`,`acct`.`acctno` AS `acctno`,`ay`.`activeyear` AS `activeyear`,`ay`.`lastyearrenewed` AS `lastyearrenewed`,`accttxn`.`txntypeid` AS `apptype`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath`,`grp`.`description` AS `acctgroup_description`,`o`.`owner_name` AS `owner_name`,`o`.`owner_address_text` AS `owner_address_text`,`fran`.`controlno` AS `franchiseno`,`fran`.`objid` AS `franchiseid`,`v`.`objid` AS `vehicletypeid`,`v`.`title` AS `vehicletype_title`,`v`.`permitdoctypeid` AS `vehicletype_permitdoctypeid`,`v`.`franchisedoctypeid` AS `vehicletype_franchisedoctypeid`,`ay`.`vehiclepermitid` AS `vehiclepermitid`,`ay`.`franchisepermitid` AS `franchisepermitid`,`vp`.`objid` AS `vehiclepermit_objid`,`vdoc`.`doctypeid` AS `vehiclepermit_doctypeid`,`vp`.`issueno` AS `vehiclepermit_issueno`,`vp`.`dtissued` AS `vehiclepermit_dtissued`,`vp`.`expirydate` AS `vehiclepermit_expirydate`,`fp`.`objid` AS `franchisepermit_objid`,`fdoc`.`doctypeid` AS `franchisepermit_doctypeid`,`fp`.`issueno` AS `franchisepermit_issueno`,`fp`.`dtissued` AS `franchisepermit_dtissued`,`fp`.`expirydate` AS `franchisepermit_expirydate`,`o`.`contact_phoneno` AS `contact_phoneno`,`o`.`contact_mobileno` AS `contact_mobileno`,`o`.`contact_email` AS `contact_email` from ((((((((((((((`vrs_txn` `txn` join `vrs_account_year` `ay` on((`txn`.`acctyearid` = `ay`.`objid`))) join `vrs_txn` `accttxn` on((`ay`.`txnid` = `accttxn`.`objid`))) join `vrs_header_info` `o` on((`txn`.`headerinfoid` = `o`.`objid`))) join `vrs_account` `acct` on((`ay`.`acctid` = `acct`.`objid`))) join `vrs_account_group` `grp` on((`o`.`acctgroupid` = `grp`.`objid`))) join `vrs_franchise` `fran` on((`acct`.`franchiseid` = `fran`.`objid`))) join `vrs_txntype` `typ` on((`txn`.`txntypeid` = `typ`.`objid`))) join `vrs_vehicletype` `v` on((`fran`.`vehicletypeid` = `v`.`objid`))) join `vrs_txn_task` `t` on((`txn`.`taskid` = `t`.`taskid`))) join `sys_wf_node` `sn` on(((`sn`.`processname` = `typ`.`processname`) and (`sn`.`name` = `t`.`state`)))) left join `vrs_doc_issuance` `vp` on((`ay`.`vehiclepermitid` = `vp`.`objid`))) left join `vrs_doc` `vdoc` on((`vdoc`.`issuanceid` = `vp`.`objid`))) left join `vrs_doc_issuance` `fp` on((`ay`.`franchisepermitid` = `fp`.`objid`))) left join `vrs_doc` `fdoc` on((`fdoc`.`issuanceid` = `fp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_vehicletype_field`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_vehicletype_field`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_vehicletype_field` AS select `vf`.`objid` AS `objid`,`vf`.`vehicletypeid` AS `vehicletypeid`,`vf`.`name` AS `name`,`vf`.`caption` AS `caption`,`vf`.`category` AS `category`,`vf`.`sortorder` AS `sortorder`,`vf`.`required` AS `required`,`vf`.`textwidth` AS `textwidth`,`v`.`datatype` AS `datatype` from (`vrs_vehicletype_field` `vf` join `vrs_variable` `v` on((`vf`.`name` = `v`.`objid`))) order by `vf`.`sortorder` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 14:01:13
