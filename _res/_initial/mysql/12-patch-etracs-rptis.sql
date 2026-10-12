-- MySQL dump 10.13  Distrib 5.7.40, for Win64 (x86_64)
--
-- Host: localhost    Database: training_etracs_2_5_05_03
-- ------------------------------------------------------
-- Server version 5.7.40-log

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
-- Current Database: `training_etracs_2_5_05_03`
--

USE `training_etracs_2_5_05_03`;

-- 
-- INITIALIZE...
-- 

drop table if exists vw_assessment_notice ;
drop table if exists vw_assessment_notice_item ;
drop table if exists vw_batch_rpttaxcredit_error ;
drop table if exists vw_batchgr ;
drop table if exists vw_building ;
drop table if exists vw_certification_land_improvement ;
drop table if exists vw_certification_landdetail ;
drop table if exists vw_faas_lookup ;
drop table if exists vw_idle_land ;
drop table if exists vw_landtax_abstract_of_collection_detail ;
drop table if exists vw_landtax_abstract_of_collection_detail_eor ;
drop table if exists vw_landtax_collection_detail ;
drop table if exists vw_landtax_collection_detail_eor ;
drop table if exists vw_landtax_collection_disposition_detail ;
drop table if exists vw_landtax_collection_disposition_detail_eor ;
drop table if exists vw_landtax_collection_share_detail ;
drop table if exists vw_landtax_collection_share_detail_eor ;
drop table if exists vw_landtax_eor ;
drop table if exists vw_landtax_eor_remittance ;
drop table if exists vw_landtax_lgu_account_mapping ;
drop table if exists vw_landtax_report_rptdelinquency ;
drop table if exists vw_landtax_report_rptdelinquency_detail ;
drop table if exists vw_lob ;
drop table if exists vw_machine_smv ;
drop table if exists vw_machinery ;
drop table if exists vw_newly_assessed_property ;
drop table if exists vw_ocular_inspection ;
drop table if exists vw_real_property_payment ;
drop table if exists vw_report_consolidated_land ;
drop table if exists vw_report_consolidation ;
drop table if exists vw_report_landrpu ;
drop table if exists vw_report_motherland_summary ;
drop table if exists vw_report_orc ;
drop table if exists vw_report_subdividedland ;
drop table if exists vw_rptcertification_item ;
drop table if exists vw_rptledger_avdifference ;
drop table if exists vw_rptledger_cancelled_faas ;
drop table if exists vw_rptpayment_item_detail ;
drop table if exists vw_rpu_assessment ;
drop table if exists vw_txn_log;

drop view if exists vw_assessment_notice ;
drop view if exists vw_assessment_notice_item ;
drop view if exists vw_batch_rpttaxcredit_error ;
drop view if exists vw_batchgr ;
drop view if exists vw_building ;
drop view if exists vw_certification_land_improvement ;
drop view if exists vw_certification_landdetail ;
drop view if exists vw_faas_lookup ;
drop view if exists vw_idle_land ;
drop view if exists vw_landtax_abstract_of_collection_detail ;
drop view if exists vw_landtax_abstract_of_collection_detail_eor ;
drop view if exists vw_landtax_collection_detail ;
drop view if exists vw_landtax_collection_detail_eor ;
drop view if exists vw_landtax_collection_disposition_detail ;
drop view if exists vw_landtax_collection_disposition_detail_eor ;
drop view if exists vw_landtax_collection_share_detail ;
drop view if exists vw_landtax_collection_share_detail_eor ;
drop view if exists vw_landtax_eor ;
drop view if exists vw_landtax_eor_remittance ;
drop view if exists vw_landtax_lgu_account_mapping ;
drop view if exists vw_landtax_report_rptdelinquency ;
drop view if exists vw_landtax_report_rptdelinquency_detail ;
drop view if exists vw_lob ;
drop view if exists vw_machine_smv ;
drop view if exists vw_machinery ;
drop view if exists vw_newly_assessed_property ;
drop view if exists vw_ocular_inspection ;
drop view if exists vw_real_property_payment ;
drop view if exists vw_report_consolidated_land ;
drop view if exists vw_report_consolidation ;
drop view if exists vw_report_landrpu ;
drop view if exists vw_report_motherland_summary ;
drop view if exists vw_report_orc ;
drop view if exists vw_report_subdividedland ;
drop view if exists vw_rptcertification_item ;
drop view if exists vw_rptledger_avdifference ;
drop view if exists vw_rptledger_cancelled_faas ;
drop view if exists vw_rptpayment_item_detail ;
drop view if exists vw_rpu_assessment ;
drop view if exists vw_txn_log;

--
-- SQL TABLES
--

--
-- Table structure for table `assessmentnotice`
--

DROP TABLE IF EXISTS `assessmentnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessmentnotice` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `txnno` varchar(15) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `taxpayerid` varchar(50) NOT NULL,
  `taxpayername` varchar(800) NOT NULL,
  `taxpayeraddress` varchar(150) NOT NULL,
  `createdbyid` varchar(50) DEFAULT NULL,
  `createdbyname` varchar(100) NOT NULL,
  `createdbytitle` varchar(50) NOT NULL,
  `approvedbyid` varchar(50) DEFAULT NULL,
  `approvedbyname` varchar(100) DEFAULT NULL,
  `approvedbytitle` varchar(50) DEFAULT NULL,
  `dtdelivered` date DEFAULT NULL,
  `receivedby` varchar(150) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `assessmentyear` int(11) DEFAULT NULL,
  `administrator_name` varchar(150) DEFAULT NULL,
  `administrator_address` varchar(150) DEFAULT NULL,
  `deliverytype_objid` varchar(50) DEFAULT NULL,
  `info` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_txnno_assessmentnotice` (`txnno`),
  KEY `ix_assessmentnotice_receivedby` (`receivedby`),
  KEY `ix_assessmentnotice_state` (`state`),
  KEY `ix_assessmentnotice_taxpayerid` (`taxpayerid`),
  KEY `ix_assessmentnotice_taxpayername` (`taxpayername`(255)),
  KEY `ix_assessmentnotice_txnno` (`txnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessmentnotice`
--

LOCK TABLES `assessmentnotice` WRITE;
/*!40000 ALTER TABLE `assessmentnotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessmentnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessmentnotice_online`
--

DROP TABLE IF EXISTS `assessmentnotice_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessmentnotice_online` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `reftype` varchar(25) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `refdate` date NOT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `ordate` date DEFAULT NULL,
  `oramount` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_orno` (`orno`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_state` (`state`),
  CONSTRAINT `fk_assessmentnotice_online_assessmentnotice` FOREIGN KEY (`objid`) REFERENCES `assessmentnotice` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessmentnotice_online`
--

LOCK TABLES `assessmentnotice_online` WRITE;
/*!40000 ALTER TABLE `assessmentnotice_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessmentnotice_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessmentnoticeitem`
--

DROP TABLE IF EXISTS `assessmentnoticeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessmentnoticeitem` (
  `objid` varchar(50) NOT NULL,
  `assessmentnoticeid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `info` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_assessmentnoticeitem_assessmentnotice` (`assessmentnoticeid`),
  KEY `FK_assessmentnoticeitem_faas` (`faasid`),
  CONSTRAINT `FK_assessmentnoticeitem_assessmentnotice` FOREIGN KEY (`assessmentnoticeid`) REFERENCES `assessmentnotice` (`objid`),
  CONSTRAINT `FK_assessmentnoticeitem_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessmentnoticeitem`
--

LOCK TABLES `assessmentnoticeitem` WRITE;
/*!40000 ALTER TABLE `assessmentnoticeitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessmentnoticeitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_rpttaxcredit`
--

DROP TABLE IF EXISTS `batch_rpttaxcredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_rpttaxcredit` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txndate` date NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `paymentfrom` date DEFAULT NULL,
  `paymentto` varchar(255) DEFAULT NULL,
  `creditedyear` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `validity` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_state` (`state`),
  KEY `ix_txnno` (`txnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_rpttaxcredit`
--

LOCK TABLES `batch_rpttaxcredit` WRITE;
/*!40000 ALTER TABLE `batch_rpttaxcredit` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_rpttaxcredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_rpttaxcredit_ledger`
--

DROP TABLE IF EXISTS `batch_rpttaxcredit_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_rpttaxcredit_ledger` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `error` varchar(255) DEFAULT NULL,
  `barangayid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_barangayid` (`barangayid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_state` (`state`),
  CONSTRAINT `fk_rpttaxcredit_rptledger_parent` FOREIGN KEY (`parentid`) REFERENCES `batch_rpttaxcredit` (`objid`),
  CONSTRAINT `fk_rpttaxcredit_rptledger_rptledger` FOREIGN KEY (`objid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_rpttaxcredit_ledger`
--

LOCK TABLES `batch_rpttaxcredit_ledger` WRITE;
/*!40000 ALTER TABLE `batch_rpttaxcredit_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_rpttaxcredit_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_rpttaxcredit_ledger_posted`
--

DROP TABLE IF EXISTS `batch_rpttaxcredit_ledger_posted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_rpttaxcredit_ledger_posted` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_barangayid` (`barangayid`),
  KEY `ix_parentid` (`parentid`),
  CONSTRAINT `fk_rpttaxcredit_rptledger_posted_parent` FOREIGN KEY (`parentid`) REFERENCES `batch_rpttaxcredit` (`objid`),
  CONSTRAINT `fk_rpttaxcredit_rptledger_posted_rptledger` FOREIGN KEY (`objid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_rpttaxcredit_ledger_posted`
--

LOCK TABLES `batch_rpttaxcredit_ledger_posted` WRITE;
/*!40000 ALTER TABLE `batch_rpttaxcredit_ledger_posted` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_rpttaxcredit_ledger_posted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchgr`
--

DROP TABLE IF EXISTS `batchgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchgr` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `ry` int(11) NOT NULL,
  `lgu_objid` varchar(50) NOT NULL,
  `barangay_objid` varchar(50) NOT NULL,
  `rputype` varchar(15) DEFAULT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `memoranda` varchar(100) DEFAULT NULL,
  `txntype_objid` varchar(50) DEFAULT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `effectivityyear` int(11) DEFAULT NULL,
  `effectivityqtr` int(11) DEFAULT NULL,
  `originlgu_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_lgu_objid` (`lgu_objid`),
  KEY `ix_barangay_objid` (`barangay_objid`),
  KEY `ix_classificationid` (`classification_objid`),
  KEY `ix_ry` (`ry`),
  KEY `ix_section` (`section`),
  KEY `ix_state` (`state`),
  KEY `ix_txnno` (`txnno`),
  CONSTRAINT `batchgr_ibfk_1` FOREIGN KEY (`barangay_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `batchgr_ibfk_2` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `batchgr_ibfk_3` FOREIGN KEY (`lgu_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `batchgr_ibfk_4` FOREIGN KEY (`barangay_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `batchgr_ibfk_5` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `batchgr_ibfk_6` FOREIGN KEY (`lgu_objid`) REFERENCES `sys_org` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchgr`
--

LOCK TABLES `batchgr` WRITE;
/*!40000 ALTER TABLE `batchgr` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchgr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchgr_item`
--

DROP TABLE IF EXISTS `batchgr_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchgr_item` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `rputype` varchar(15) NOT NULL,
  `tdno` varchar(50) NOT NULL,
  `fullpin` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `suffix` int(11) NOT NULL,
  `newfaasid` varchar(50) DEFAULT NULL,
  `error` text,
  `subsuffix` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_batchgr_item_batchgr` (`parent_objid`),
  KEY `fk_batchgr_item_newfaasid` (`newfaasid`),
  KEY `fk_batchgr_item_pin` (`pin`),
  KEY `fk_batchgr_item_tdno` (`tdno`),
  CONSTRAINT `batchgr_item_ibfk_1` FOREIGN KEY (`parent_objid`) REFERENCES `batchgr` (`objid`),
  CONSTRAINT `batchgr_item_ibfk_2` FOREIGN KEY (`objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `batchgr_item_ibfk_3` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `batchgr_item_ibfk_4` FOREIGN KEY (`objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `batchgr_item_ibfk_5` FOREIGN KEY (`objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchgr_item`
--

LOCK TABLES `batchgr_item` WRITE;
/*!40000 ALTER TABLE `batchgr_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchgr_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchgr_task`
--

DROP TABLE IF EXISTS `batchgr_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchgr_task` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` longtext,
  `returnedby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`),
  CONSTRAINT `batchgr_task_ibfk_1` FOREIGN KEY (`refid`) REFERENCES `batchgr` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchgr_task`
--

LOCK TABLES `batchgr_task` WRITE;
/*!40000 ALTER TABLE `batchgr_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchgr_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billingstatement`
--

DROP TABLE IF EXISTS `billingstatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billingstatement` (
  `Area` int(11) DEFAULT NULL,
  `BillingNo` int(11) DEFAULT NULL,
  `BillingDate` varchar(20) DEFAULT NULL,
  `ConsumerID` varchar(100) DEFAULT NULL,
  `Names1` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `Barangay` varchar(100) DEFAULT NULL,
  `ConsumerType` varchar(100) DEFAULT NULL,
  `PresentReading` int(11) DEFAULT '0',
  `PreviousReading` int(11) DEFAULT '0',
  `Consumed` int(11) DEFAULT '0',
  `CurrentBill` double DEFAULT '0',
  `CBU` double DEFAULT '0',
  `Surcharge` double DEFAULT '0',
  `Adjust` double DEFAULT NULL,
  `Others` double DEFAULT '0',
  `TotalAmount` double DEFAULT '0',
  `ReadBy` varchar(100) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  `Tendered` int(11) DEFAULT '0',
  `Cost` double DEFAULT '0',
  `PaymentDate` varchar(15) DEFAULT NULL,
  `MFee` smallint(6) DEFAULT NULL,
  `IFee` smallint(6) DEFAULT '0',
  `TFee` smallint(6) DEFAULT NULL,
  `InstFee` smallint(6) DEFAULT '0',
  `ORS2` varchar(50) DEFAULT '0',
  `MMFee` smallint(6) DEFAULT '0',
  `bd` int(11) DEFAULT NULL,
  `bd2` varchar(200) DEFAULT NULL,
  `SCTIN` varchar(50) DEFAULT NULL,
  `PWDIDNO` varchar(50) DEFAULT NULL,
  `LESS_SC` double DEFAULT '0',
  `WITHOLDING` double DEFAULT NULL,
  `PAYMENTDUE` double DEFAULT '0',
  `TOTALDUE` double DEFAULT '0',
  `del1` varchar(255) DEFAULT NULL,
  `scstats` int(11) DEFAULT '0',
  `cbustats` int(11) DEFAULT '0',
  `consumption2018` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billingstatement`
--

LOCK TABLES `billingstatement` WRITE;
/*!40000 ALTER TABLE `billingstatement` DISABLE KEYS */;
/*!40000 ALTER TABLE `billingstatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgadditionalitem`
--

DROP TABLE IF EXISTS `bldgadditionalitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgadditionalitem` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `expr` varchar(100) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `addareatobldgtotalarea` int(11) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgadditionalitem_settingcode` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgadditionalitem_settingname` (`bldgrysettingid`,`name`),
  KEY `FK_bldgadditionalitem` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_bldgadditionalitem` FOREIGN KEY (`previd`) REFERENCES `bldgadditionalitem` (`objid`),
  CONSTRAINT `FK_bldgadditionalitem_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgadditionalitem`
--

LOCK TABLES `bldgadditionalitem` WRITE;
/*!40000 ALTER TABLE `bldgadditionalitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgadditionalitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgassesslevel`
--

DROP TABLE IF EXISTS `bldgassesslevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgassesslevel` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgassesslevel_bdlgrysettingid_name` (`bldgrysettingid`,`name`),
  UNIQUE KEY `ux_bldgassesslevel_bldgrysettingid_code` (`bldgrysettingid`,`code`),
  KEY `FK_bldgassesslevel_bldgrysettingid` (`bldgrysettingid`),
  KEY `FK_bldgassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_bldgassesslevel_bldgrysettingid` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgassesslevel`
--

LOCK TABLES `bldgassesslevel` WRITE;
/*!40000 ALTER TABLE `bldgassesslevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgassesslevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgassesslevelrange`
--

DROP TABLE IF EXISTS `bldgassesslevelrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `bldgassesslevelid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgassesslevelid_mvfrom` (`bldgassesslevelid`,`mvfrom`),
  KEY `FK_bldgassesslevelrange_bldgrysetting` (`bldgrysettingid`),
  CONSTRAINT `FK_bldgassesslevelrange_bldgassesslevel` FOREIGN KEY (`bldgassesslevelid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldgassesslevelrange_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgassesslevelrange`
--

LOCK TABLES `bldgassesslevelrange` WRITE;
/*!40000 ALTER TABLE `bldgassesslevelrange` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgassesslevelrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgfloor`
--

DROP TABLE IF EXISTS `bldgfloor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgfloor` (
  `objid` varchar(50) NOT NULL,
  `bldguseid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `floorno` varchar(5) NOT NULL,
  `area` decimal(16,2) NOT NULL,
  `storeyrate` decimal(16,2) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldgfloor_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgfloor_bldguse` (`bldguseid`),
  CONSTRAINT `FK_bldgfloor_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgfloor_bldguse` FOREIGN KEY (`bldguseid`) REFERENCES `bldguse` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgfloor`
--

LOCK TABLES `bldgfloor` WRITE;
/*!40000 ALTER TABLE `bldgfloor` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgfloor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgflooradditional`
--

DROP TABLE IF EXISTS `bldgflooradditional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgflooradditional` (
  `objid` varchar(50) NOT NULL,
  `bldgfloorid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `additionalitem_objid` varchar(50) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `expr` varchar(300) NOT NULL,
  `depreciate` int(11) DEFAULT NULL,
  `issystem` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldgflooradditional_additionalitem` (`additionalitem_objid`),
  KEY `FK_bldgflooradditional_bldgfloor` (`bldgfloorid`),
  KEY `FK_bldgflooradditional_bldgrpu` (`bldgrpuid`),
  CONSTRAINT `FK_bldgflooradditional_additionalitem` FOREIGN KEY (`additionalitem_objid`) REFERENCES `bldgadditionalitem` (`objid`),
  CONSTRAINT `FK_bldgflooradditional_bldgfloor` FOREIGN KEY (`bldgfloorid`) REFERENCES `bldgfloor` (`objid`),
  CONSTRAINT `FK_bldgflooradditional_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgflooradditional`
--

LOCK TABLES `bldgflooradditional` WRITE;
/*!40000 ALTER TABLE `bldgflooradditional` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgflooradditional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgflooradditionalparam`
--

DROP TABLE IF EXISTS `bldgflooradditionalparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgflooradditionalparam` (
  `objid` varchar(50) NOT NULL,
  `bldgflooradditionalid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `param_objid` varchar(50) NOT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `decimalvalue` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldgflooradditionalparam_bldgflooradditional` (`bldgflooradditionalid`),
  KEY `FK_bldgflooradditionalparam_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgflooradditionalparam_param` (`param_objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_bldgflooradditional` FOREIGN KEY (`bldgflooradditionalid`) REFERENCES `bldgflooradditional` (`objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_param` FOREIGN KEY (`param_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgflooradditionalparam`
--

LOCK TABLES `bldgflooradditionalparam` WRITE;
/*!40000 ALTER TABLE `bldgflooradditionalparam` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgflooradditionalparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgkind`
--

DROP TABLE IF EXISTS `bldgkind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgkind` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgkind_code` (`code`),
  UNIQUE KEY `ux_bldgkind_name` (`name`),
  KEY `ix_bldgkind_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgkind`
--

LOCK TABLES `bldgkind` WRITE;
/*!40000 ALTER TABLE `bldgkind` DISABLE KEYS */;
INSERT INTO `bldgkind` VALUES ('BK-1b32f87f:14ae618a9de:-6e52','APPROVED','MART','MINI MART'),('BK-2fc47da5:147dad8b0c1:-72f4','APPROVED','GRAN','GRANDSTAND'),('BK-2fc47da5:147dad8b0c1:-72fd','APPROVED','COLI','COLISEUM'),('BK-2fc47da5:147dad8b0c1:-7306','APPROVED','GYMN','GYMNASIUM'),('BK-2fc47da5:147dad8b0c1:-730f','APPROVED','BLAS','BLACK SMITH SHED'),('BK-2fc47da5:147dad8b0c1:-7318','APPROVED','WELS','WELDING SHOP'),('BK-2fc47da5:147dad8b0c1:-7321','APPROVED','LUMY','LUMBER YARD'),('BK-2fc47da5:147dad8b0c1:-732a','APPROVED','SAMB','SAW MILL BUILDING'),('BK-2fc47da5:147dad8b0c1:-7333','APPROVED','PACH','PACKING PLANT ( OPEN SHED )'),('BK-2fc47da5:147dad8b0c1:-733c','APPROVED','PACP','PACKING PLANT ( WITH FRUIT PATIO )'),('BK-2fc47da5:147dad8b0c1:-7345','APPROVED','FUNH','FUNERAL HOME'),('BK-2fc47da5:147dad8b0c1:-734e','APPROVED','INRE','INLAND RESORT'),('BK-2fc47da5:147dad8b0c1:-7357','APPROVED','SWIP','SWIMMING POOL'),('BK-2fc47da5:147dad8b0c1:-7360','APPROVED','GASP','GAS PLANT'),('BK-2fc47da5:147dad8b0c1:-7369','APPROVED','DISR','DISPLAY ROOM'),('BK-2fc47da5:147dad8b0c1:-7372','APPROVED','GASS','GASOLINE STATION'),('BK-2fc47da5:147dad8b0c1:-7447','APPROVED','OPES','OPEN SHED'),('BK-2fc47da5:147dad8b0c1:-7450','APPROVED','MULS','MULTIPURPOSE SHED'),('BK-2fc47da5:147dad8b0c1:-746d','APPROVED','TENC','TENNIS COURT CLOSE'),('BK-2fc47da5:147dad8b0c1:-7476','APPROVED','TENO','TENNIS COURT OPEN'),('BK-2fc47da5:147dad8b0c1:-747f','APPROVED','BASC','BASKETBALL COURT'),('BK-2fc47da5:147dad8b0c1:-7488','APPROVED','COCK','COCKPIT'),('BK-2fc47da5:147dad8b0c1:-7491','APPROVED','AREN','ARENA'),('BK-2fc47da5:147dad8b0c1:-749a','APPROVED','BILH','BILLIARD HALL'),('BK-2fc47da5:147dad8b0c1:-74a3','APPROVED','CLUH','CLUB HOUSE'),('BK-2fc47da5:147dad8b0c1:-74ac','APPROVED','PILO','PILOTA COURT'),('BK-2fc47da5:147dad8b0c1:-74b5','APPROVED','BOWL','BOWLING LANE'),('BK-2fc47da5:147dad8b0c1:-74be','APPROVED','RECH','RECREATIONAL HALL'),('BK-2fc47da5:147dad8b0c1:-74c7','APPROVED','HATC','HATCHERY'),('BK-2fc47da5:147dad8b0c1:-74d0','APPROVED','FENC','FENCE'),('BK-2fc47da5:147dad8b0c1:-74d9','APPROVED','CROC','CROCODILE CAGE'),('BK-2fc47da5:147dad8b0c1:-74e2','APPROVED','GREH','GREEN HOUSE'),('BK-2fc47da5:147dad8b0c1:-74eb','APPROVED','PIGG','PIGGERY'),('BK-2fc47da5:147dad8b0c1:-74f4','APPROVED','HOGH','HOG HOUSE'),('BK-2fc47da5:147dad8b0c1:-74fd','APPROVED','STAB','STABLE'),('BK-2fc47da5:147dad8b0c1:-7506','APPROVED','POUH','POULTRY HOUSE'),('BK-2fc47da5:147dad8b0c1:-750f','APPROVED','BARH','BARN HOUSE'),('BK-2fc47da5:147dad8b0c1:-7518','APPROVED','STAL','STALL'),('BK-2fc47da5:147dad8b0c1:-7521','APPROVED','SARI','SARI SARI STORE'),('BK-2fc47da5:147dad8b0c1:-752a','APPROVED','INDB','INDUSTRIAL BUILDING'),('BK-2fc47da5:147dad8b0c1:-7533','APPROVED','BAKE','BAKERY'),('BK-2fc47da5:147dad8b0c1:-753c','APPROVED','RICM','RICE MILL'),('BK-2fc47da5:147dad8b0c1:-7545','APPROVED','STOR','STORAGE'),('BK-2fc47da5:147dad8b0c1:-754e','APPROVED','BODE','BODEGA'),('BK-2fc47da5:147dad8b0c1:-7557','APPROVED','WARH','WAREHOUSE'),('BK-2fc47da5:147dad8b0c1:-7560','APPROVED','FACT','FACTORY'),('BK-2fc47da5:147dad8b0c1:-7569','APPROVED','REST','RESTAURANT'),('BK-2fc47da5:147dad8b0c1:-7572','APPROVED','MALL','MALL'),('BK-2fc47da5:147dad8b0c1:-757b','APPROVED','SHOP','SHOPPING CENTER'),('BK-2fc47da5:147dad8b0c1:-7584','APPROVED','MARK','MARKET'),('BK-2fc47da5:147dad8b0c1:-758d','APPROVED','THEA','THEATER'),('BK-2fc47da5:147dad8b0c1:-7596','APPROVED','COND','CONDOMINIUM'),('BK-2fc47da5:147dad8b0c1:-759f','APPROVED','BANK','BANK'),('BK-2fc47da5:147dad8b0c1:-75a8','APPROVED','PARB','PARKING BUILDING'),('BK-2fc47da5:147dad8b0c1:-75ba','APPROVED','HOSP','HOSPITAL'),('BK-2fc47da5:147dad8b0c1:-75c3','APPROVED','ASSH','ASSEMBLY HOUSE'),('BK-2fc47da5:147dad8b0c1:-75db','APPROVED','CHUR','CHURCH'),('BK-2fc47da5:147dad8b0c1:-75ed','APPROVED','GUAH','GUARD HOUSE'),('BK-2fc47da5:147dad8b0c1:-75f6','APPROVED','LAUH','LAUNDRY HOUSE'),('BK-2fc47da5:147dad8b0c1:-75ff','APPROVED','QUAR','QUARTER'),('BK-2fc47da5:147dad8b0c1:-7608','APPROVED','GARA','GARAGE'),('BK-2fc47da5:147dad8b0c1:-7611','APPROVED','ACCE','ACCESSORY BUILDING'),('BK-2fc47da5:147dad8b0c1:-761a','APPROVED','MINH','MINI HOSPITAL'),('BK-2fc47da5:147dad8b0c1:-7623','APPROVED','LYIN','LYING INN'),('BK-2fc47da5:147dad8b0c1:-762c','APPROVED','CLIN','CLINIC'),('BK-2fc47da5:147dad8b0c1:-7635','APPROVED','MOTE','MOTEL'),('BK-2fc47da5:147dad8b0c1:-763e','APPROVED','HOTE','HOTEL'),('BK-2fc47da5:147dad8b0c1:-7647','APPROVED','LODH','LODGING HOUSE'),('BK-2fc47da5:147dad8b0c1:-7650','APPROVED','BORH','BOARDING HOUSE'),('BK-2fc47da5:147dad8b0c1:-7659','APPROVED','APA2','APARTMENT'),('BK-2fc47da5:147dad8b0c1:-7662','APPROVED','APA1','DUPLEX APARTELLE'),('BK-2fc47da5:147dad8b0c1:-766b','APPROVED','TOWH','TOWN HOUSE'),('BK-2fc47da5:147dad8b0c1:-7674','APPROVED','ROWH','ROW HOUSE'),('BK-2fc47da5:147dad8b0c1:-767d','APPROVED','MUFD','MULTIPLE DWELLING'),('BK-2fc47da5:147dad8b0c1:-7688','APPROVED','TWFD','TWO FAMILY DWELLING'),('BK-2fc47da5:147dad8b0c1:-7691','APPROVED','ONFD','ONE FAMILY DWELLING'),('BK-38f70c63:14c69d45960:-757d','APPROVED','TINS','TIN SMITH SHED'),('BK-38f70c63:14c69d45960:-7a4a','APPROVED','LHOU','LABOR HOUSE'),('BK-38f70c63:14c69d45960:-7a56','APPROVED','PHOU','PUMP HOUSE'),('BK-38f70c63:14c69d45960:-7a62','APPROVED','HALL','HALL'),('BK-38f70c63:14c69d45960:-7a6e','APPROVED','WPSH','WATER PUMP SHED'),('BK-38f70c63:14c69d45960:-7a7a','APPROVED','BUNK','BUNK HOUSE'),('BK-38f70c63:14c69d45960:658','APPROVED','TARI','TARIMA MILL'),('BK-45a7cbe9:14c49ff9de2:-73b8','APPROVED','CHAP','CHAPEL'),('BK-45a7cbe9:14c4a43c968:-604d','APPROVED','PRKS','PUROK SHED'),('BK-4d44203a:14bc865709b:-7a1c','APPROVED','HEAL','HEALTH CENTER'),('BK-4d44203a:14bc865709b:-7a25','APPROVED','STAG','STAGE'),('BK-4d44203a:14bc865709b:-7a4d','APPROVED','DAYC','DAY CARE CENTER'),('BK-4d44203a:14bc865709b:1711','APPROVED','BARB','BARBER SHOP'),('BK-4d44203a:14bc865709b:171d','APPROVED','BEAU','BEAUTY SALON'),('BK-4d44203a:14bc865709b:1729','APPROVED','MASS','MASSAGE SPA'),('BK-53a6d50d:14c34ba226f:-54c1','APPROVED','SING','SINGLE DETACHED'),('BK-53a6d50d:14c34ba226f:6f62','APPROVED','CANT','CANTEEN'),('BK-53a6d50d:14c3573ab1a:-7be4','APPROVED','GARB','GARBAGE SHED'),('BK-68032f15:14b84d8b0da:-43a5','APPROVED','MOTO','MOTOR PARTS STORE'),('BK-68032f15:14b84d8b0da:-43ae','APPROVED','DRUG','DRUGSTORE'),('BK-7f011244:14b94d22ccb:-7cc3','APPROVED','MESS','MESS HALL'),('BK431e49c0:14b0a2d917e:-6e3a','APPROVED','EATE','EATERY'),('BK431e49c0:14b0a2d917e:-6e43','APPROVED','CARI','CARINDERIA'),('BK431e49c0:14b0a2d917e:-6e5e','APPROVED','HARD','HARDWARE'),('BK50bc78f6:14b83f170f5:9af','APPROVED','CONV','CONVENIENCE STORE'),('BK50bc78f6:14b83f170f5:9da','APPROVED','GROC','GROCERY'),('BK65bd4b24:147eee7380d:-1297','APPROVED','TERM','TERMINAL'),('BK65bd4b24:147eee7380d:-1680','APPROVED','OFFI','OFFICE'),('BK65bd4b24:147eee7380d:-26b8','APPROVED','SCHB','SCHOOL BUILDING');
/*!40000 ALTER TABLE `bldgkind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgkindbucc`
--

DROP TABLE IF EXISTS `bldgkindbucc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgkindbucc` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `bldgkind_objid` varchar(50) NOT NULL,
  `basevaluetype` varchar(25) NOT NULL,
  `basevalue` decimal(10,2) NOT NULL,
  `minbasevalue` decimal(10,2) NOT NULL,
  `maxbasevalue` decimal(10,2) NOT NULL,
  `gapvalue` int(11) NOT NULL,
  `minarea` decimal(10,2) NOT NULL,
  `maxarea` decimal(10,2) NOT NULL,
  `bldgclass` varchar(50) DEFAULT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgkindbucc_settingtypekind` (`bldgrysettingid`,`bldgtypeid`,`bldgkind_objid`,`bldgclass`),
  KEY `FK_bldgkindbucc_bldgkind` (`bldgkind_objid`),
  KEY `FK_bldgkindbucc_bldgkindbucc` (`previd`),
  KEY `FK_bldgkindbucc_bldgtype` (`bldgtypeid`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_bldgkindbucc_bldgkind` FOREIGN KEY (`bldgkind_objid`) REFERENCES `bldgkind` (`objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgrysettingid` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgkindbucc`
--

LOCK TABLES `bldgkindbucc` WRITE;
/*!40000 ALTER TABLE `bldgkindbucc` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgkindbucc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgrpu`
--

DROP TABLE IF EXISTS `bldgrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgrpu` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) DEFAULT NULL,
  `houseno` varchar(25) DEFAULT NULL,
  `psic` varchar(20) DEFAULT NULL,
  `permitno` varchar(20) DEFAULT NULL,
  `permitdate` datetime DEFAULT NULL,
  `permitissuedby` varchar(50) DEFAULT NULL,
  `bldgtype_objid` varchar(50) DEFAULT NULL,
  `bldgkindbucc_objid` varchar(50) DEFAULT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `dtcompleted` datetime DEFAULT NULL,
  `dtoccupied` datetime DEFAULT NULL,
  `floorcount` int(11) NOT NULL,
  `depreciation` decimal(16,2) NOT NULL,
  `depreciationvalue` decimal(16,2) NOT NULL,
  `totaladjustment` decimal(16,2) NOT NULL,
  `additionalinfo` varchar(500) DEFAULT NULL,
  `bldgage` int(11) NOT NULL,
  `percentcompleted` int(11) NOT NULL,
  `bldgassesslevel_objid` varchar(50) DEFAULT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `condominium` int(11) NOT NULL,
  `bldgclass` varchar(15) DEFAULT NULL,
  `predominant` int(11) DEFAULT NULL,
  `effectiveage` int(11) DEFAULT NULL,
  `condocerttitle` varchar(50) DEFAULT NULL,
  `dtcertcompletion` date DEFAULT NULL,
  `dtcertoccupancy` date DEFAULT NULL,
  `cdurating` varchar(15) DEFAULT NULL,
  `dtconstructed` date DEFAULT NULL,
  `occpermitno` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldgrpu_bldgassesslevel` (`bldgassesslevel_objid`),
  KEY `FK_bldgrpu_bldgkindbucc` (`bldgkindbucc_objid`),
  KEY `FK_bldgrpu_bldgtype` (`bldgtype_objid`),
  KEY `FK_bldgrpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_bldgrpu_bldgassesslevel` FOREIGN KEY (`bldgassesslevel_objid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldgrpu_bldgkindbucc` FOREIGN KEY (`bldgkindbucc_objid`) REFERENCES `bldgkindbucc` (`objid`),
  CONSTRAINT `FK_bldgrpu_bldgtype` FOREIGN KEY (`bldgtype_objid`) REFERENCES `bldgtype` (`objid`),
  CONSTRAINT `FK_bldgrpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_bldgrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgrpu`
--

LOCK TABLES `bldgrpu` WRITE;
/*!40000 ALTER TABLE `bldgrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgrpu_assessment`
--

DROP TABLE IF EXISTS `bldgrpu_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgrpu_assessment` (
  `objid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_bldgrpuassessment_actualuseid` (`actualuse_objid`),
  KEY `ix_bldgrpuassessment_bldgrpuid` (`bldgrpuid`),
  CONSTRAINT `FK_bldgrpuassessment_bldgassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldgrpuassessment_rpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgrpu_assessment`
--

LOCK TABLES `bldgrpu_assessment` WRITE;
/*!40000 ALTER TABLE `bldgrpu_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgrpu_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgrpu_land`
--

DROP TABLE IF EXISTS `bldgrpu_land`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgrpu_land` (
  `objid` varchar(50) NOT NULL,
  `rpu_objid` varchar(50) NOT NULL,
  `landfaas_objid` varchar(50) NOT NULL,
  `landrpumaster_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_bldgrpu_land_bldgrpuid` (`rpu_objid`),
  KEY `ix_bldgrpu_land_landfaasid` (`landfaas_objid`),
  KEY `ix_bldgrpu_land_landrpumasterid` (`landrpumaster_objid`),
  CONSTRAINT `fk_bldgrpu_land_bldgrpu` FOREIGN KEY (`rpu_objid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `fk_bldgrpu_land_landfaas` FOREIGN KEY (`landfaas_objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `fk_bldgrpu_land_rpumaster` FOREIGN KEY (`landrpumaster_objid`) REFERENCES `rpumaster` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgrpu_land`
--

LOCK TABLES `bldgrpu_land` WRITE;
/*!40000 ALTER TABLE `bldgrpu_land` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgrpu_land` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgrpu_structuraltype`
--

DROP TABLE IF EXISTS `bldgrpu_structuraltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgrpu_structuraltype` (
  `objid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `bldgtype_objid` varchar(50) DEFAULT NULL,
  `bldgkindbucc_objid` varchar(50) DEFAULT NULL,
  `floorcount` int(11) NOT NULL,
  `basefloorarea` decimal(16,2) NOT NULL,
  `totalfloorarea` decimal(16,2) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldgrpu_structuraltype` (`classification_objid`),
  KEY `FK_bldgrpu_structuraltype_bldgkindbucc` (`bldgkindbucc_objid`),
  KEY `FK_bldgrpu_structuraltype_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgrpu_structuraltype_bldgtype` (`bldgtype_objid`),
  CONSTRAINT `FK_bldgrpu_structuraltype` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_bldgrpu_structuraltype_bldgkindbucc` FOREIGN KEY (`bldgkindbucc_objid`) REFERENCES `bldgkindbucc` (`objid`),
  CONSTRAINT `FK_bldgrpu_structuraltype_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgrpu_structuraltype_bldgtype` FOREIGN KEY (`bldgtype_objid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgrpu_structuraltype`
--

LOCK TABLES `bldgrpu_structuraltype` WRITE;
/*!40000 ALTER TABLE `bldgrpu_structuraltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgrpu_structuraltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgrysetting`
--

DROP TABLE IF EXISTS `bldgrysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `ry` int(11) NOT NULL,
  `predominant` int(11) DEFAULT NULL,
  `depreciatecoreanditemseparately` int(11) DEFAULT NULL,
  `computedepreciationbasedonschedule` int(11) DEFAULT NULL,
  `straightdepreciation` int(11) DEFAULT NULL,
  `calcbldgagebasedondtoccupied` int(11) DEFAULT NULL,
  `appliedto` longtext,
  `previd` varchar(50) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `ordinanceno` varchar(25) DEFAULT NULL,
  `ordinancedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_bldgrysetting_previd` (`previd`),
  KEY `ix_bldgrysetting_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgrysetting`
--

LOCK TABLES `bldgrysetting` WRITE;
/*!40000 ALTER TABLE `bldgrysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgrysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgstructure`
--

DROP TABLE IF EXISTS `bldgstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgstructure` (
  `objid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `structure_objid` varchar(50) NOT NULL,
  `material_objid` varchar(50) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldgstructure_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgstructure_material` (`material_objid`),
  KEY `FK_bldgstructure_structure` (`structure_objid`),
  CONSTRAINT `FK_bldgstructure_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgstructure_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_bldgstructure_structure` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgstructure`
--

LOCK TABLES `bldgstructure` WRITE;
/*!40000 ALTER TABLE `bldgstructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgtype`
--

DROP TABLE IF EXISTS `bldgtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgtype` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `basevaluetype` varchar(10) NOT NULL,
  `residualrate` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `usecdu` int(11) DEFAULT NULL,
  `storeyadjtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgtype_bldgrysettingid_code` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgtype_bldgrysettingid_name` (`bldgrysettingid`,`name`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_bldgtype_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_bldgtype` FOREIGN KEY (`previd`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgtype`
--

LOCK TABLES `bldgtype` WRITE;
/*!40000 ALTER TABLE `bldgtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgtype_depreciation`
--

DROP TABLE IF EXISTS `bldgtype_depreciation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgtype_depreciation` (
  `objid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `agefrom` int(11) NOT NULL,
  `ageto` int(11) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  `excellent` decimal(16,2) DEFAULT NULL,
  `verygood` decimal(16,2) DEFAULT NULL,
  `good` decimal(16,2) DEFAULT NULL,
  `average` decimal(16,2) DEFAULT NULL,
  `fair` decimal(16,2) DEFAULT NULL,
  `poor` decimal(16,2) DEFAULT NULL,
  `verypoor` decimal(16,2) DEFAULT NULL,
  `unsound` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgtype_depreciation_settingtypeagefrom` (`bldgtypeid`,`bldgrysettingid`,`agefrom`),
  KEY `FK_bldgtype_depreciation_bldgrysetting` (`bldgrysettingid`),
  KEY `ix_bldgtypeid` (`bldgtypeid`),
  CONSTRAINT `FK_bldgtype_depreciation_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_depreciation_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgtype_depreciation`
--

LOCK TABLES `bldgtype_depreciation` WRITE;
/*!40000 ALTER TABLE `bldgtype_depreciation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgtype_depreciation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgtype_storeyadjustment`
--

DROP TABLE IF EXISTS `bldgtype_storeyadjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgtype_storeyadjustment` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `floorno` int(11) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgtype_storeyadjustment` (`bldgtypeid`,`floorno`,`rate`),
  KEY `bldgtypeid` (`bldgtypeid`),
  KEY `FK_bldgtype_storeyadjustment` (`previd`),
  KEY `FK_bldgtype_storeyadjustment_bldgrysetting` (`bldgrysettingid`),
  CONSTRAINT `bldgtype_storeyadjustment_ibfk_1` FOREIGN KEY (`previd`) REFERENCES `bldgtype_storeyadjustment` (`objid`),
  CONSTRAINT `bldgtype_storeyadjustment_ibfk_2` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `bldgtype_storeyadjustment_ibfk_3` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgtype_storeyadjustment`
--

LOCK TABLES `bldgtype_storeyadjustment` WRITE;
/*!40000 ALTER TABLE `bldgtype_storeyadjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgtype_storeyadjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldgtype_storeyadjustment_bldgkind`
--

DROP TABLE IF EXISTS `bldgtype_storeyadjustment_bldgkind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldgtype_storeyadjustment_bldgkind` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `floorno` int(11) NOT NULL,
  `bldgkindid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_bldgtype_kind_floorno` (`bldgtypeid`,`bldgkindid`,`floorno`),
  KEY `fk_storeyadjustment_bldgkind_bldgrysetting` (`bldgrysettingid`),
  KEY `fk_storeyadjustment_bldgkind_parent` (`parentid`),
  CONSTRAINT `fk_storeyadjustment_bldgkind_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `fk_storeyadjustment_bldgkind_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`),
  CONSTRAINT `fk_storeyadjustment_bldgkind_parent` FOREIGN KEY (`parentid`) REFERENCES `bldgtype_storeyadjustment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldgtype_storeyadjustment_bldgkind`
--

LOCK TABLES `bldgtype_storeyadjustment_bldgkind` WRITE;
/*!40000 ALTER TABLE `bldgtype_storeyadjustment_bldgkind` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldgtype_storeyadjustment_bldgkind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bldguse`
--

DROP TABLE IF EXISTS `bldguse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bldguse` (
  `objid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `area` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `depreciationvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) DEFAULT NULL,
  `assessedvalue` decimal(16,2) DEFAULT NULL,
  `structuraltype_objid` varchar(50) DEFAULT NULL,
  `addlinfo` varchar(255) DEFAULT NULL,
  `adjfordepreciation` decimal(16,2) DEFAULT NULL,
  `taxable` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_bldguse_bldgassesslevel` (`actualuse_objid`),
  KEY `FK_bldguse_bldgrpu` (`bldgrpuid`),
  CONSTRAINT `FK_bldguse_bldgassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldguse_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bldguse`
--

LOCK TABLES `bldguse` WRITE;
/*!40000 ALTER TABLE `bldguse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bldguse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blkmarket`
--

DROP TABLE IF EXISTS `blkmarket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blkmarket` (
  `blkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `blkowner` varchar(100) DEFAULT NULL,
  `blkrate` int(11) DEFAULT NULL,
  PRIMARY KEY (`blkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blkmarket`
--

LOCK TABLES `blkmarket` WRITE;
/*!40000 ALTER TABLE `blkmarket` DISABLE KEYS */;
/*!40000 ALTER TABLE `blkmarket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brgy_taxaccount_mapping`
--

DROP TABLE IF EXISTS `brgy_taxaccount_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brgy_taxaccount_mapping` (
  `barangayid` varchar(50) NOT NULL,
  `basicadvacct_objid` varchar(50) DEFAULT NULL,
  `basicprevacct_objid` varchar(50) DEFAULT NULL,
  `basicprevintacct_objid` varchar(50) DEFAULT NULL,
  `basicprioracct_objid` varchar(50) DEFAULT NULL,
  `basicpriorintacct_objid` varchar(50) DEFAULT NULL,
  `basiccurracct_objid` varchar(50) DEFAULT NULL,
  `basiccurrintacct_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`barangayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brgy_taxaccount_mapping`
--

LOCK TABLES `brgy_taxaccount_mapping` WRITE;
/*!40000 ALTER TABLE `brgy_taxaccount_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `brgy_taxaccount_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brgyshare`
--

DROP TABLE IF EXISTS `brgyshare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brgyshare` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(15) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `totalshare` decimal(16,2) NOT NULL,
  `createdbyid` varchar(50) DEFAULT NULL,
  `createdby` varchar(150) NOT NULL,
  `createdbytitle` varchar(50) NOT NULL,
  `postedbyid` varchar(50) DEFAULT NULL,
  `postedby` varchar(150) DEFAULT NULL,
  `postedbytitle` varchar(50) DEFAULT NULL,
  `sharetype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_brgyshare_yqm` (`year`,`month`),
  KEY `ix_brgyshare_state` (`state`),
  KEY `ix_brgyshare_yq` (`year`),
  KEY `ix_brgyshare_yqm` (`year`,`month`),
  KEY `ix_brgyshare_yr` (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brgyshare`
--

LOCK TABLES `brgyshare` WRITE;
/*!40000 ALTER TABLE `brgyshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `brgyshare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brgyshare_account_mapping`
--

DROP TABLE IF EXISTS `brgyshare_account_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brgyshare_account_mapping` (
  `barangayid` varchar(50) NOT NULL,
  `acct_objid` varchar(50) NOT NULL,
  `penaltyacct_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`barangayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brgyshare_account_mapping`
--

LOCK TABLES `brgyshare_account_mapping` WRITE;
/*!40000 ALTER TABLE `brgyshare_account_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `brgyshare_account_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brgyshareitem`
--

DROP TABLE IF EXISTS `brgyshareitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brgyshareitem` (
  `objid` varchar(50) NOT NULL,
  `brgyshareid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `basic` decimal(16,2) NOT NULL,
  `basicint` decimal(16,2) NOT NULL,
  `basicdisc` decimal(16,2) NOT NULL,
  `basicshare` decimal(16,2) NOT NULL,
  `basicintshare` decimal(16,2) NOT NULL,
  `commonshare` decimal(16,2) DEFAULT NULL,
  `basiccurrent` decimal(16,2) DEFAULT NULL,
  `basicprevious` decimal(16,2) DEFAULT NULL,
  `basiccollection` decimal(16,2) DEFAULT NULL,
  `basicintcollection` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_brgyshareitem_brgyshare_brgy` (`brgyshareid`,`barangayid`),
  CONSTRAINT `FK_brgyshareitem_brgyshare` FOREIGN KEY (`brgyshareid`) REFERENCES `brgyshare` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brgyshareitem`
--

LOCK TABLES `brgyshareitem` WRITE;
/*!40000 ALTER TABLE `brgyshareitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `brgyshareitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelannotation`
--

DROP TABLE IF EXISTS `cancelannotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancelannotation` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `txnno` varchar(10) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `annotationid` varchar(50) NOT NULL,
  `fileno` varchar(20) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `orno` varchar(10) DEFAULT NULL,
  `ordate` datetime DEFAULT NULL,
  `oramount` decimal(16,2) NOT NULL,
  `signedby` varchar(150) NOT NULL,
  `signedbytitle` varchar(50) NOT NULL,
  `dtsigned` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_cancelannotation_faasannotation` (`annotationid`),
  KEY `ix_cancelannotation_fileno` (`fileno`),
  KEY `ix_cancelannotation_txnno` (`txnno`),
  CONSTRAINT `FK_cancelannotation_faasannotation` FOREIGN KEY (`annotationid`) REFERENCES `faasannotation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelannotation`
--

LOCK TABLES `cancelannotation` WRITE;
/*!40000 ALTER TABLE `cancelannotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelannotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelledfaas`
--

DROP TABLE IF EXISTS `cancelledfaas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancelledfaas` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `txndate` datetime NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `reason_objid` varchar(50) DEFAULT NULL,
  `remarks` longtext,
  `online` int(11) DEFAULT NULL,
  `lguid` varchar(50) DEFAULT NULL,
  `lasttaxyear` int(11) DEFAULT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  `originlguid` varchar(50) DEFAULT NULL,
  `cancelledbytdnos` varchar(500) DEFAULT NULL,
  `cancelledbypins` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_cancelledfaas_faas` (`faasid`),
  KEY `FK_cancelledfaas_reason` (`reason_objid`),
  KEY `ix_cancelledfaas_txnno` (`txnno`),
  CONSTRAINT `FK_cancelledfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_cancelledfaas_reason` FOREIGN KEY (`reason_objid`) REFERENCES `canceltdreason` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelledfaas`
--

LOCK TABLES `cancelledfaas` WRITE;
/*!40000 ALTER TABLE `cancelledfaas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelledfaas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelledfaas_signatory`
--

DROP TABLE IF EXISTS `cancelledfaas_signatory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancelledfaas_signatory` (
  `objid` varchar(50) NOT NULL,
  `taxmapper_objid` varchar(50) DEFAULT NULL,
  `taxmapper_name` varchar(100) DEFAULT NULL,
  `taxmapper_title` varchar(50) DEFAULT NULL,
  `taxmapper_dtsigned` datetime DEFAULT NULL,
  `taxmapper_taskid` varchar(50) DEFAULT NULL,
  `taxmapperchief_objid` varchar(50) DEFAULT NULL,
  `taxmapperchief_name` varchar(100) DEFAULT NULL,
  `taxmapperchief_title` varchar(50) DEFAULT NULL,
  `taxmapperchief_dtsigned` datetime DEFAULT NULL,
  `taxmapperchief_taskid` varchar(50) DEFAULT NULL,
  `appraiser_objid` varchar(50) DEFAULT NULL,
  `appraiser_name` varchar(150) DEFAULT NULL,
  `appraiser_title` varchar(50) DEFAULT NULL,
  `appraiser_dtsigned` datetime DEFAULT NULL,
  `appraiser_taskid` varchar(50) DEFAULT NULL,
  `appraiserchief_objid` varchar(50) DEFAULT NULL,
  `appraiserchief_name` varchar(100) DEFAULT NULL,
  `appraiserchief_title` varchar(50) DEFAULT NULL,
  `appraiserchief_dtsigned` datetime DEFAULT NULL,
  `appraiserchief_taskid` varchar(50) DEFAULT NULL,
  `recommender_objid` varchar(50) DEFAULT NULL,
  `recommender_name` varchar(100) DEFAULT NULL,
  `recommender_title` varchar(50) DEFAULT NULL,
  `recommender_dtsigned` datetime DEFAULT NULL,
  `recommender_taskid` varchar(50) DEFAULT NULL,
  `provtaxmapper_objid` varchar(50) DEFAULT NULL,
  `provtaxmapper_name` varchar(100) DEFAULT NULL,
  `provtaxmapper_title` varchar(50) DEFAULT NULL,
  `provtaxmapper_dtsigned` datetime DEFAULT NULL,
  `provtaxmapper_taskid` varchar(50) DEFAULT NULL,
  `provtaxmapperchief_objid` varchar(50) DEFAULT NULL,
  `provtaxmapperchief_name` varchar(100) DEFAULT NULL,
  `provtaxmapperchief_title` varchar(50) DEFAULT NULL,
  `provtaxmapperchief_dtsigned` datetime DEFAULT NULL,
  `provtaxmapperchief_taskid` varchar(50) DEFAULT NULL,
  `provappraiser_objid` varchar(50) DEFAULT NULL,
  `provappraiser_name` varchar(100) DEFAULT NULL,
  `provappraiser_title` varchar(50) DEFAULT NULL,
  `provappraiser_dtsigned` datetime DEFAULT NULL,
  `provappraiser_taskid` varchar(50) DEFAULT NULL,
  `provappraiserchief_objid` varchar(50) DEFAULT NULL,
  `provappraiserchief_name` varchar(100) DEFAULT NULL,
  `provappraiserchief_title` varchar(50) DEFAULT NULL,
  `provappraiserchief_dtsigned` datetime DEFAULT NULL,
  `provappraiserchief_taskid` varchar(50) DEFAULT NULL,
  `approver_objid` varchar(50) DEFAULT NULL,
  `approver_name` varchar(100) DEFAULT NULL,
  `approver_title` varchar(50) DEFAULT NULL,
  `approver_dtsigned` datetime DEFAULT NULL,
  `approver_taskid` varchar(50) DEFAULT NULL,
  `provapprover_objid` varchar(50) DEFAULT NULL,
  `provapprover_name` varchar(100) DEFAULT NULL,
  `provapprover_title` varchar(50) DEFAULT NULL,
  `provapprover_dtsigned` datetime DEFAULT NULL,
  `provapprover_taskid` varchar(50) DEFAULT NULL,
  `provrecommender_objid` varchar(50) DEFAULT NULL,
  `provrecommender_name` varchar(100) DEFAULT NULL,
  `provrecommender_title` varchar(50) DEFAULT NULL,
  `provrecommender_dtsigned` datetime DEFAULT NULL,
  `provrecommender_taskid` varchar(50) DEFAULT NULL,
  `reviewer_objid` varchar(50) DEFAULT NULL,
  `reviewer_name` varchar(100) DEFAULT NULL,
  `reviewer_title` varchar(75) DEFAULT NULL,
  `reviewer_dtsigned` datetime DEFAULT NULL,
  `reviewer_taskid` varchar(50) DEFAULT NULL,
  `assessor_name` varchar(100) DEFAULT NULL,
  `assessor_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  CONSTRAINT `FK_cancelledfaas_signatory_cancelled_faas` FOREIGN KEY (`objid`) REFERENCES `cancelledfaas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelledfaas_signatory`
--

LOCK TABLES `cancelledfaas_signatory` WRITE;
/*!40000 ALTER TABLE `cancelledfaas_signatory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelledfaas_signatory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelledfaas_task`
--

DROP TABLE IF EXISTS `cancelledfaas_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancelledfaas_task` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` longtext,
  `returnedby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`),
  CONSTRAINT `FK_cancelledfaas_task_cancelledfaas` FOREIGN KEY (`refid`) REFERENCES `cancelledfaas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelledfaas_task`
--

LOCK TABLES `cancelledfaas_task` WRITE;
/*!40000 ALTER TABLE `cancelledfaas_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelledfaas_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canceltdreason`
--

DROP TABLE IF EXISTS `canceltdreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canceltdreason` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_canceltdreason_code` (`code`),
  UNIQUE KEY `ux_canceltdreason_name` (`name`),
  KEY `ix_canceltdreason_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canceltdreason`
--

LOCK TABLES `canceltdreason` WRITE;
/*!40000 ALTER TABLE `canceltdreason` DISABLE KEYS */;
INSERT INTO `canceltdreason` VALUES ('CTDR-5288b48:1473337046c:-7de4','APPROVED','TDE','TOTAL DESTRUCTION',NULL),('CTDR-5288b48:1473337046c:-7df3','APPROVED','TD','TOTAL DEMOLITION',NULL),('CTDR-5288b48:1473337046c:-7e02','APPROVED','PD','PARTIAL DEMOLITION',NULL),('CTDR-6747af2c:14733405d23:-7fcb','APPROVED','CRE','COURT RESOLUTION','COURT ORDERS'),('CTDR4c59183a:14732e0c079:-7903','APPROVED','DU','DUPLICATION OF RECORDS',NULL);
/*!40000 ALTER TABLE `canceltdreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consolidatedland`
--

DROP TABLE IF EXISTS `consolidatedland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consolidatedland` (
  `objid` varchar(50) NOT NULL,
  `consolidationid` varchar(50) NOT NULL,
  `landfaasid` varchar(50) NOT NULL,
  `rpuid` varchar(50) NOT NULL,
  `rpid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_consolidatedland_consolidation` (`consolidationid`),
  KEY `FK_consolidatedland_faas` (`landfaasid`),
  CONSTRAINT `FK_consolidatedland_consolidation` FOREIGN KEY (`consolidationid`) REFERENCES `consolidation` (`objid`),
  CONSTRAINT `FK_consolidatedland_faas` FOREIGN KEY (`landfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consolidatedland`
--

LOCK TABLES `consolidatedland` WRITE;
/*!40000 ALTER TABLE `consolidatedland` DISABLE KEYS */;
/*!40000 ALTER TABLE `consolidatedland` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consolidation`
--

DROP TABLE IF EXISTS `consolidation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consolidation` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` datetime DEFAULT NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(50) DEFAULT NULL,
  `autonumber` int(11) DEFAULT NULL,
  `effectivityyear` int(11) DEFAULT NULL,
  `effectivityqtr` int(11) DEFAULT NULL,
  `newtdno` varchar(50) DEFAULT NULL,
  `newutdno` varchar(50) DEFAULT NULL,
  `newtitletype` varchar(50) DEFAULT NULL,
  `newtitleno` varchar(50) DEFAULT NULL,
  `newtitledate` varchar(50) DEFAULT NULL,
  `memoranda` longtext,
  `lguid` varchar(50) DEFAULT NULL,
  `lgutype` varchar(50) DEFAULT NULL,
  `newrpid` varchar(50) DEFAULT NULL,
  `newrpuid` varchar(50) DEFAULT NULL,
  `newfaasid` varchar(50) DEFAULT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `taxpayer_name` longtext,
  `taxpayer_address` varchar(200) DEFAULT NULL,
  `owner_name` longtext,
  `owner_address` varchar(200) DEFAULT NULL,
  `administrator_objid` varchar(50) DEFAULT NULL,
  `administrator_name` varchar(500) DEFAULT NULL,
  `administrator_address` varchar(200) DEFAULT NULL,
  `administratorid` varchar(50) DEFAULT NULL,
  `administratorname` varchar(500) DEFAULT NULL,
  `administratoraddress` varchar(200) DEFAULT NULL,
  `signatories` longtext,
  `originlguid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_consolidation_newfaas` (`newfaasid`),
  KEY `FK_consolidation_newrp` (`newrpid`),
  KEY `FK_consolidation_newrpu` (`newrpuid`),
  KEY `ix_lguid` (`lguid`),
  CONSTRAINT `FK_consolidation_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_consolidation_newrp` FOREIGN KEY (`newrpid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_consolidation_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consolidation`
--

LOCK TABLES `consolidation` WRITE;
/*!40000 ALTER TABLE `consolidation` DISABLE KEYS */;
/*!40000 ALTER TABLE `consolidation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consolidation_task`
--

DROP TABLE IF EXISTS `consolidation_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consolidation_task` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` longtext,
  `returnedby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consolidation_task`
--

LOCK TABLES `consolidation_task` WRITE;
/*!40000 ALTER TABLE `consolidation_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `consolidation_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consolidationaffectedrpu`
--

DROP TABLE IF EXISTS `consolidationaffectedrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consolidationaffectedrpu` (
  `objid` varchar(50) NOT NULL,
  `consolidationid` varchar(50) NOT NULL,
  `landfaasid` varchar(50) NOT NULL,
  `prevfaasid` varchar(50) NOT NULL,
  `newrpid` varchar(50) NOT NULL,
  `newrpuid` varchar(50) NOT NULL,
  `newfaasid` varchar(50) DEFAULT NULL,
  `newtdno` varchar(50) DEFAULT NULL,
  `newutdno` varchar(50) DEFAULT NULL,
  `newsuffix` int(11) DEFAULT NULL,
  `memoranda` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_consolidationaffectedrpu_consolidation` (`consolidationid`),
  KEY `FK_consolidationaffectedrpu_newfaas` (`newfaasid`),
  KEY `FK_consolidationaffectedrpu_newrpu` (`newrpuid`),
  KEY `FK_consolidationaffectedrpu_prevfaas` (`prevfaasid`),
  KEY `ix_consolidationaffectedrpu_landfaasid` (`landfaasid`),
  KEY `ix_consolidationaffectedrpu_newtdno` (`newtdno`),
  CONSTRAINT `FK_consolidationaffectedrpu_consolidation` FOREIGN KEY (`consolidationid`) REFERENCES `consolidation` (`objid`),
  CONSTRAINT `FK_consolidationaffectedrpu_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_consolidationaffectedrpu_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_consolidationaffectedrpu_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consolidationaffectedrpu`
--

LOCK TABLES `consolidationaffectedrpu` WRITE;
/*!40000 ALTER TABLE `consolidationaffectedrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `consolidationaffectedrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examiner_finding`
--

DROP TABLE IF EXISTS `examiner_finding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examiner_finding` (
  `objid` varchar(50) NOT NULL,
  `findings` longtext,
  `parent_objid` varchar(50) DEFAULT NULL,
  `dtinspected` date DEFAULT NULL,
  `recommendations` varchar(500) DEFAULT NULL,
  `inspectors` varchar(500) DEFAULT NULL,
  `notedby` varchar(100) DEFAULT NULL,
  `notedbytitle` varchar(50) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `inspectedby_objid` varchar(50) DEFAULT NULL,
  `inspectedby_name` varchar(100) DEFAULT NULL,
  `inspectedby_title` varchar(50) DEFAULT NULL,
  `doctype` varchar(50) DEFAULT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ix_txnno` (`txnno`),
  KEY `ix_dtinspected` (`dtinspected`),
  KEY `ix_examiner_finding_inspectedby_objid` (`inspectedby_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examiner_finding`
--

LOCK TABLES `examiner_finding` WRITE;
/*!40000 ALTER TABLE `examiner_finding` DISABLE KEYS */;
/*!40000 ALTER TABLE `examiner_finding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exemptiontype`
--

DROP TABLE IF EXISTS `exemptiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exemptiontype` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `orderno` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_exemptiontype_code` (`code`),
  UNIQUE KEY `ux_exemptiontype_name` (`name`),
  KEY `ix_exemptiontype_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemptiontype`
--

LOCK TABLES `exemptiontype` WRITE;
/*!40000 ALTER TABLE `exemptiontype` DISABLE KEYS */;
INSERT INTO `exemptiontype` VALUES ('CH','APPROVED','CH','CHARITABLE',3),('CO','APPROVED','CO','COOPERATIVE',51),('ED','APPROVED','ED','EDUCATIONAL',4),('ET-4a163839:14b503bd402:-691b','APPROVED','CC','CANAL / CREEK',55),('ET41101959:14b19901f42:-6584','APPROVED','CE','CEMETERY',56),('ET65ce3399:1674e92d986:-7108','APPROVED','NI','NIA',19),('ET65ce3399:1674e92d986:-7130','APPROVED','MA','MANGROVE',10),('GO','APPROVED','GO','GOVERNMENT',1),('OT','APPROVED','OT','OTHERS',50),('RB','APPROVED','RB','RIVER BED',52),('RD','APPROVED','RD','ROADS',53),('RE','APPROVED','RE','RELIGIOUS',2),('TE','APPROVED','TE','TELECOM',54);
/*!40000 ALTER TABLE `exemptiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas`
--

DROP TABLE IF EXISTS `faas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `rpuid` varchar(50) DEFAULT NULL,
  `datacapture` int(11) NOT NULL,
  `autonumber` int(11) NOT NULL,
  `utdno` varchar(25) NOT NULL,
  `tdno` varchar(25) DEFAULT NULL,
  `txntype_objid` varchar(10) DEFAULT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `titletype` varchar(10) DEFAULT NULL,
  `titleno` varchar(50) DEFAULT NULL,
  `titledate` datetime DEFAULT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `owner_name` longtext,
  `owner_address` varchar(150) DEFAULT NULL,
  `administrator_objid` varchar(50) DEFAULT NULL,
  `administrator_name` varchar(800) DEFAULT NULL,
  `administrator_address` varchar(150) DEFAULT NULL,
  `beneficiary_objid` varchar(50) DEFAULT NULL,
  `beneficiary_name` varchar(150) DEFAULT NULL,
  `beneficiary_address` varchar(150) DEFAULT NULL,
  `memoranda` longtext,
  `cancelnote` varchar(250) DEFAULT NULL,
  `restrictionid` varchar(50) DEFAULT NULL,
  `backtaxyrs` int(11) NOT NULL,
  `prevtdno` varchar(800) DEFAULT NULL,
  `prevpin` varchar(500) DEFAULT NULL,
  `prevowner` longtext,
  `prevav` varchar(200) DEFAULT NULL,
  `prevmv` varchar(200) DEFAULT NULL,
  `cancelreason` varchar(5) DEFAULT NULL,
  `canceldate` date DEFAULT NULL,
  `cancelledbytdnos` longtext,
  `lguid` varchar(50) NOT NULL,
  `txntimestamp` varchar(20) DEFAULT NULL,
  `cancelledtimestamp` varchar(25) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dtapproved` date DEFAULT NULL,
  `realpropertyid` varchar(50) DEFAULT NULL,
  `lgutype` varchar(25) DEFAULT NULL,
  `signatories` longtext,
  `ryordinanceno` varchar(25) DEFAULT NULL,
  `ryordinancedate` date DEFAULT NULL,
  `prevareaha` varchar(200) DEFAULT NULL,
  `prevareasqm` varchar(200) DEFAULT NULL,
  `preveffectivity` varchar(15) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `qtr` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `cancelledyear` int(11) DEFAULT NULL,
  `cancelledqtr` int(11) DEFAULT NULL,
  `cancelledmonth` int(11) DEFAULT NULL,
  `cancelledday` int(11) DEFAULT NULL,
  `fullpin` varchar(35) DEFAULT NULL,
  `prevadministrator` varchar(500) DEFAULT NULL,
  `originlguid` varchar(50) DEFAULT NULL,
  `parentfaasid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_faas_utdno` (`utdno`),
  KEY `FK_faas_entity` (`taxpayer_objid`),
  KEY `FK_faas_entity_admin` (`administrator_objid`),
  KEY `FK_faas_entity_beneficiary` (`beneficiary_objid`),
  KEY `FK_faas_rpu` (`rpuid`),
  KEY `ix_dtapproved` (`dtapproved`),
  KEY `ix_faas_administratorname` (`administrator_name`(255)),
  KEY `ix_faas_appraisedby` (`objid`),
  KEY `ix_faas_beneficiary` (`beneficiary_name`),
  KEY `ix_faas_canceldate` (`canceldate`),
  KEY `ix_faas_cancelledtimestamp` (`cancelledtimestamp`),
  KEY `ix_faas_cancelledyear` (`cancelledyear`),
  KEY `ix_faas_cancelledyear_qtr` (`cancelledyear`,`cancelledqtr`),
  KEY `ix_faas_cancelledyear_qtr_month` (`cancelledyear`,`cancelledqtr`,`cancelledmonth`),
  KEY `ix_faas_cancelledyear_qtr_month_day` (`cancelledyear`,`cancelledqtr`,`cancelledmonth`,`cancelledday`),
  KEY `ix_faas_fullpin` (`fullpin`),
  KEY `ix_faas_name` (`name`),
  KEY `ix_faas_prevpin` (`prevpin`(255)),
  KEY `ix_faas_prevtdno` (`prevtdno`(255)),
  KEY `ix_faas_realproperty` (`realpropertyid`),
  KEY `ix_faas_restrictionid` (`restrictionid`),
  KEY `ix_faas_state` (`state`),
  KEY `ix_faas_tdno` (`tdno`),
  KEY `ix_faas_titleno` (`titleno`),
  KEY `ix_faas_year` (`year`),
  KEY `ix_faas_year_qtr` (`year`,`qtr`),
  KEY `ix_faas_year_qtr_month` (`year`,`qtr`,`month`),
  KEY `ix_faas_year_qtr_month_day` (`year`,`qtr`,`month`,`day`),
  KEY `ix_lguid` (`lguid`),
  KEY `ix_prevtdno` (`prevtdno`(255)),
  CONSTRAINT `FK_faas_rpu` FOREIGN KEY (`rpuid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas`
--

LOCK TABLES `faas` WRITE;
/*!40000 ALTER TABLE `faas` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_affectedrpu`
--

DROP TABLE IF EXISTS `faas_affectedrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_affectedrpu` (
  `objid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `prevfaasid` varchar(50) NOT NULL,
  `newfaasid` varchar(50) DEFAULT NULL,
  `newsuffix` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_faasaffectedrpu_faasprevfaas` (`faasid`,`prevfaasid`),
  KEY `FK_faasaffectedrpu_faas` (`faasid`),
  KEY `FK_faasaffectedrpu_newfaas` (`newfaasid`),
  KEY `FK_faasaffectedrpu_prevfaas` (`prevfaasid`),
  CONSTRAINT `FK_faasaffectedrpu_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_faasaffectedrpu_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_faasaffectedrpu_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_affectedrpu`
--

LOCK TABLES `faas_affectedrpu` WRITE;
/*!40000 ALTER TABLE `faas_affectedrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_affectedrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_list`
--

DROP TABLE IF EXISTS `faas_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_list` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `rpuid` varchar(50) NOT NULL,
  `realpropertyid` varchar(50) NOT NULL,
  `datacapture` int(11) NOT NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(50) NOT NULL,
  `tdno` varchar(25) DEFAULT NULL,
  `utdno` varchar(25) NOT NULL,
  `prevtdno` varchar(800) DEFAULT NULL,
  `displaypin` varchar(35) NOT NULL,
  `pin` varchar(35) NOT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `owner_name` varchar(5000) DEFAULT NULL,
  `owner_address` varchar(150) DEFAULT NULL,
  `administrator_name` varchar(150) DEFAULT NULL,
  `administrator_address` varchar(150) DEFAULT NULL,
  `rputype` varchar(10) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `barangay` varchar(75) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `classcode` varchar(20) DEFAULT NULL,
  `cadastrallotno` varchar(900) DEFAULT NULL,
  `blockno` varchar(100) DEFAULT NULL,
  `surveyno` varchar(255) DEFAULT NULL,
  `titleno` varchar(50) DEFAULT NULL,
  `totalareaha` decimal(16,6) NOT NULL,
  `totalareasqm` decimal(16,6) NOT NULL,
  `totalmv` decimal(16,2) NOT NULL,
  `totalav` decimal(16,2) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `cancelreason` varchar(15) DEFAULT NULL,
  `cancelledbytdnos` longtext,
  `lguid` varchar(50) NOT NULL,
  `originlguid` varchar(50) NOT NULL,
  `yearissued` int(11) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  `taskstate` varchar(50) DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `trackingno` varchar(20) DEFAULT NULL,
  `publicland` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_faaslist_administrator_name` (`administrator_name`),
  KEY `ix_faaslist_assigneeid` (`assignee_objid`),
  KEY `ix_faaslist_barangay` (`barangay`),
  KEY `ix_faaslist_barangayid` (`barangayid`),
  KEY `ix_faaslist_blockno` (`blockno`),
  KEY `ix_faaslist_classcode` (`classcode`),
  KEY `ix_faaslist_classification_objid` (`classification_objid`),
  KEY `ix_faaslist_lguid` (`lguid`),
  KEY `ix_faaslist_originlguid` (`originlguid`),
  KEY `ix_faaslist_pin` (`pin`),
  KEY `ix_faaslist_publicland` (`publicland`),
  KEY `ix_faaslist_realpropertyid` (`realpropertyid`),
  KEY `ix_faaslist_rpuid` (`rpuid`),
  KEY `ix_faaslist_rputype` (`rputype`),
  KEY `ix_faaslist_ry` (`ry`),
  KEY `ix_faaslist_state` (`state`),
  KEY `ix_faaslist_surveyno` (`surveyno`),
  KEY `ix_faaslist_taskstate` (`taskstate`),
  KEY `ix_faaslist_taxpayer_objid` (`taxpayer_objid`),
  KEY `ix_faaslist_tdno` (`tdno`),
  KEY `ix_faaslist_titleno` (`titleno`),
  KEY `ix_faaslist_trackingno` (`trackingno`),
  KEY `ix_faaslist_txntype_objid` (`txntype_objid`),
  KEY `ix_faaslist_utdno` (`utdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_list`
--

LOCK TABLES `faas_list` WRITE;
/*!40000 ALTER TABLE `faas_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_previous`
--

DROP TABLE IF EXISTS `faas_previous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_previous` (
  `objid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `prevfaasid` varchar(50) DEFAULT NULL,
  `prevrpuid` varchar(50) DEFAULT NULL,
  `prevtdno` longtext,
  `prevpin` longtext,
  `prevowner` longtext,
  `prevadministrator` longtext,
  `prevav` varchar(500) DEFAULT NULL,
  `prevmv` varchar(500) DEFAULT NULL,
  `prevareasqm` varchar(500) DEFAULT NULL,
  `prevareaha` varchar(500) DEFAULT NULL,
  `preveffectivity` varchar(15) DEFAULT NULL,
  `prevtaxability` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_faas_previous_faas` (`faasid`),
  KEY `ix_faas_previous_pin` (`prevpin`(255)),
  KEY `ix_faas_previous_tdno` (`prevtdno`(255)),
  CONSTRAINT `FK_faas_previous_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_previous`
--

LOCK TABLES `faas_previous` WRITE;
/*!40000 ALTER TABLE `faas_previous` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_previous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_requested_series`
--

DROP TABLE IF EXISTS `faas_requested_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_requested_series` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `series` varchar(255) NOT NULL,
  `requestedby_name` varchar(255) NOT NULL,
  `requestedby_date` date NOT NULL,
  `createdby_name` varchar(255) NOT NULL,
  `createdby_date` datetime NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_faas_requested_series_sys_sequence` (`parentid`),
  CONSTRAINT `fk_faas_requested_series_sys_sequence` FOREIGN KEY (`parentid`) REFERENCES `sys_sequence` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_requested_series`
--

LOCK TABLES `faas_requested_series` WRITE;
/*!40000 ALTER TABLE `faas_requested_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_requested_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_restriction`
--

DROP TABLE IF EXISTS `faas_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_restriction` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `ledger_objid` varchar(50) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `restrictiontype_objid` varchar(50) NOT NULL,
  `txndate` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `receipt_objid` varchar(50) DEFAULT NULL,
  `receipt_receiptno` varchar(15) DEFAULT NULL,
  `receipt_receiptdate` datetime DEFAULT NULL,
  `receipt_amount` decimal(16,2) DEFAULT NULL,
  `receipt_lastyearpaid` int(11) DEFAULT NULL,
  `receipt_lastqtrpaid` int(11) DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(150) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `rpumaster_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_ledger_objid` (`ledger_objid`),
  KEY `ix_parent_objid` (`parent_objid`),
  KEY `ix_receiptno` (`receipt_receiptno`),
  KEY `ix_restrictiontype_objid` (`restrictiontype_objid`),
  KEY `ix_state` (`state`),
  KEY `ix_txndate` (`txndate`),
  CONSTRAINT `FK_faas_restriction_faas` FOREIGN KEY (`parent_objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_restriction`
--

LOCK TABLES `faas_restriction` WRITE;
/*!40000 ALTER TABLE `faas_restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_restriction_type`
--

DROP TABLE IF EXISTS `faas_restriction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_restriction_type` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `idx` int(11) NOT NULL,
  `isother` int(11) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_restriction_type`
--

LOCK TABLES `faas_restriction_type` WRITE;
/*!40000 ALTER TABLE `faas_restriction_type` DISABLE KEYS */;
INSERT INTO `faas_restriction_type` VALUES ('BOUNDARY_CONFLICT','Boundary Conflict',4,1),('BSP_GSP','BSP / GSP',9,1),('CARP','Under CARP',1,0),('RED_AREAS','Red Areas',3,1),('RESTRICTED','Restricted',9,1),('RP_NIA','RP / NIA',5,1),('TELECOM','Telecom',6,1),('UNDER_LITIGATION','Under Litigation',2,0),('UNDETERMINED','Undermined',7,1),('UNLOCATED_OWNER','Unlocated Owner',8,1);
/*!40000 ALTER TABLE `faas_restriction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_signatory`
--

DROP TABLE IF EXISTS `faas_signatory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_signatory` (
  `objid` varchar(50) NOT NULL,
  `taxmapper_objid` varchar(50) DEFAULT NULL,
  `taxmapper_name` varchar(100) DEFAULT NULL,
  `taxmapper_title` varchar(50) DEFAULT NULL,
  `taxmapper_dtsigned` datetime DEFAULT NULL,
  `taxmapper_taskid` varchar(50) DEFAULT NULL,
  `taxmapperchief_objid` varchar(50) DEFAULT NULL,
  `taxmapperchief_name` varchar(100) DEFAULT NULL,
  `taxmapperchief_title` varchar(50) DEFAULT NULL,
  `taxmapperchief_dtsigned` datetime DEFAULT NULL,
  `taxmapperchief_taskid` varchar(50) DEFAULT NULL,
  `appraiser_objid` varchar(50) DEFAULT NULL,
  `appraiser_name` varchar(100) DEFAULT NULL,
  `appraiser_title` varchar(50) DEFAULT NULL,
  `appraiser_dtsigned` datetime DEFAULT NULL,
  `appraiser_taskid` varchar(50) DEFAULT NULL,
  `appraiserchief_objid` varchar(50) DEFAULT NULL,
  `appraiserchief_name` varchar(100) DEFAULT NULL,
  `appraiserchief_title` varchar(50) DEFAULT NULL,
  `appraiserchief_dtsigned` datetime DEFAULT NULL,
  `appraiserchief_taskid` varchar(50) DEFAULT NULL,
  `recommender_objid` varchar(50) DEFAULT NULL,
  `recommender_name` varchar(100) DEFAULT NULL,
  `recommender_title` varchar(50) DEFAULT NULL,
  `recommender_dtsigned` datetime DEFAULT NULL,
  `recommender_taskid` varchar(50) DEFAULT NULL,
  `provtaxmapper_objid` varchar(50) DEFAULT NULL,
  `provtaxmapper_name` varchar(100) DEFAULT NULL,
  `provtaxmapper_title` varchar(50) DEFAULT NULL,
  `provtaxmapper_dtsigned` datetime DEFAULT NULL,
  `provtaxmapper_taskid` varchar(50) DEFAULT NULL,
  `provtaxmapperchief_objid` varchar(50) DEFAULT NULL,
  `provtaxmapperchief_name` varchar(100) DEFAULT NULL,
  `provtaxmapperchief_title` varchar(50) DEFAULT NULL,
  `provtaxmapperchief_dtsigned` datetime DEFAULT NULL,
  `provtaxmapperchief_taskid` varchar(50) DEFAULT NULL,
  `provappraiser_objid` varchar(50) DEFAULT NULL,
  `provappraiser_name` varchar(100) DEFAULT NULL,
  `provappraiser_title` varchar(50) DEFAULT NULL,
  `provappraiser_dtsigned` datetime DEFAULT NULL,
  `provappraiser_taskid` varchar(50) DEFAULT NULL,
  `provappraiserchief_objid` varchar(50) DEFAULT NULL,
  `provappraiserchief_name` varchar(100) DEFAULT NULL,
  `provappraiserchief_title` varchar(50) DEFAULT NULL,
  `provappraiserchief_dtsigned` datetime DEFAULT NULL,
  `provappraiserchief_taskid` varchar(50) DEFAULT NULL,
  `approver_objid` varchar(50) DEFAULT NULL,
  `approver_name` varchar(100) DEFAULT NULL,
  `approver_title` varchar(50) DEFAULT NULL,
  `approver_dtsigned` datetime DEFAULT NULL,
  `approver_taskid` varchar(50) DEFAULT NULL,
  `provapprover_objid` varchar(50) DEFAULT NULL,
  `provapprover_name` varchar(100) DEFAULT NULL,
  `provapprover_title` varchar(75) DEFAULT NULL,
  `provapprover_dtsigned` datetime DEFAULT NULL,
  `provapprover_taskid` varchar(50) DEFAULT NULL,
  `provrecommender_objid` varchar(50) DEFAULT NULL,
  `provrecommender_name` varchar(100) DEFAULT NULL,
  `provrecommender_title` varchar(50) DEFAULT NULL,
  `provrecommender_dtsigned` datetime DEFAULT NULL,
  `provrecommender_taskid` varchar(50) DEFAULT NULL,
  `reviewer_objid` varchar(50) DEFAULT NULL,
  `reviewer_name` varchar(100) DEFAULT NULL,
  `reviewer_title` varchar(75) DEFAULT NULL,
  `reviewer_dtsigned` datetime DEFAULT NULL,
  `reviewer_taskid` varchar(50) DEFAULT NULL,
  `assessor_name` varchar(100) DEFAULT NULL,
  `assessor_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  CONSTRAINT `FK_faas_faas_signatory` FOREIGN KEY (`objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_signatory`
--

LOCK TABLES `faas_signatory` WRITE;
/*!40000 ALTER TABLE `faas_signatory` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_signatory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_sketch`
--

DROP TABLE IF EXISTS `faas_sketch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_sketch` (
  `objid` varchar(50) NOT NULL,
  `drawing` longtext NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_faas_sketch_faas` (`objid`),
  CONSTRAINT `FK_faas_sketch_faas` FOREIGN KEY (`objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_sketch`
--

LOCK TABLES `faas_sketch` WRITE;
/*!40000 ALTER TABLE `faas_sketch` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_sketch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_stewardship`
--

DROP TABLE IF EXISTS `faas_stewardship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_stewardship` (
  `objid` varchar(50) NOT NULL,
  `rpumasterid` varchar(50) NOT NULL,
  `stewardrpumasterid` varchar(50) NOT NULL,
  `ry` int(11) NOT NULL,
  `stewardshipno` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_faas_stewardship` (`rpumasterid`,`stewardrpumasterid`,`ry`,`stewardshipno`),
  KEY `ix_faas_stewardship_rpumasterid` (`rpumasterid`),
  KEY `ix_faas_stewardship_stewardrpumasterid` (`stewardrpumasterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_stewardship`
--

LOCK TABLES `faas_stewardship` WRITE;
/*!40000 ALTER TABLE `faas_stewardship` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_stewardship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_task`
--

DROP TABLE IF EXISTS `faas_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_task` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` longtext,
  `returnedby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_task`
--

LOCK TABLES `faas_task` WRITE;
/*!40000 ALTER TABLE `faas_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_txntype`
--

DROP TABLE IF EXISTS `faas_txntype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_txntype` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `newledger` int(11) NOT NULL,
  `newrpu` int(11) NOT NULL,
  `newrealproperty` int(11) NOT NULL,
  `displaycode` varchar(10) DEFAULT NULL,
  `allowEditOwner` int(11) DEFAULT NULL,
  `allowEditPin` int(11) DEFAULT NULL,
  `allowEditPinInfo` int(11) DEFAULT NULL,
  `allowEditAppraisal` int(11) DEFAULT NULL,
  `opener` varchar(50) DEFAULT NULL,
  `checkbalance` int(11) DEFAULT NULL,
  `reconcileledger` int(11) DEFAULT NULL,
  `allowannotated` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_txntype`
--

LOCK TABLES `faas_txntype` WRITE;
/*!40000 ALTER TABLE `faas_txntype` DISABLE KEYS */;
INSERT INTO `faas_txntype` VALUES ('CC','Change Classification',0,1,0,'RC',0,0,0,1,NULL,1,NULL,NULL),('CD','Change Depreciation',0,1,0,'DP',0,0,0,1,NULL,1,NULL,NULL),('CE','Correction of Entry',0,1,1,'DP',1,0,1,1,NULL,1,NULL,NULL),('CK','Change Kind',0,1,1,'DP',1,1,1,1,'',0,0,0),('CS','Consolidation',1,1,1,'CS',1,0,1,1,'consolidation',1,NULL,NULL),('CT','Change Taxability',0,1,0,'DP',0,0,0,1,NULL,1,NULL,NULL),('CTD','Cancellation',0,0,0,'DP',0,0,0,0,NULL,1,NULL,NULL),('DC','Data Capture',1,1,1,'DC',1,1,1,1,NULL,0,NULL,NULL),('GR','General Revision',0,1,1,'GR',0,0,1,1,NULL,0,NULL,NULL),('MC','Multiple Claim',1,1,1,'DP',1,1,1,1,NULL,0,NULL,NULL),('MCS','Multiple Claim Settlement',0,1,1,'DP',0,0,0,0,'mcsettlement',0,NULL,NULL),('ND','New Discovery',1,1,1,'DC',1,1,1,1,NULL,0,NULL,NULL),('RE','Reassessment',0,1,0,'DP',0,1,0,1,NULL,1,NULL,NULL),('RS','Resection',0,1,1,'DP',0,0,0,1,NULL,0,NULL,NULL),('RV','Revision',0,1,1,'RV',1,1,1,1,NULL,1,NULL,NULL),('SD','Subdivision',1,1,1,'SD',1,0,1,1,'subdivision',1,NULL,NULL),('TR','Transfer of Ownership',0,1,1,'TR',1,0,1,1,NULL,1,NULL,NULL),('TRC','Transfer with Correction',0,1,1,'TR',1,0,1,1,NULL,1,NULL,NULL),('TRE','Transfer with Reassessment',0,1,0,'TR',1,0,1,1,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `faas_txntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_txntype_attribute`
--

DROP TABLE IF EXISTS `faas_txntype_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_txntype_attribute` (
  `txntype_objid` varchar(50) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`attribute`,`txntype_objid`),
  KEY `FK_faas_txntype_attribute_type` (`attribute`),
  KEY `FK_faas_txntype_attribute` (`txntype_objid`),
  CONSTRAINT `FK_faas_txntype_attribute` FOREIGN KEY (`txntype_objid`) REFERENCES `faas_txntype` (`objid`),
  CONSTRAINT `FK_faas_txntype_attribute_type` FOREIGN KEY (`attribute`) REFERENCES `faas_txntype_attribute_type` (`attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_txntype_attribute`
--

LOCK TABLES `faas_txntype_attribute` WRITE;
/*!40000 ALTER TABLE `faas_txntype_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_txntype_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faas_txntype_attribute_type`
--

DROP TABLE IF EXISTS `faas_txntype_attribute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faas_txntype_attribute_type` (
  `attribute` varchar(50) NOT NULL,
  PRIMARY KEY (`attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faas_txntype_attribute_type`
--

LOCK TABLES `faas_txntype_attribute_type` WRITE;
/*!40000 ALTER TABLE `faas_txntype_attribute_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `faas_txntype_attribute_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faasannotation`
--

DROP TABLE IF EXISTS `faasannotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faasannotation` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `annotationtype_objid` varchar(50) NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `fileno` varchar(25) NOT NULL,
  `orno` varchar(10) NOT NULL,
  `ordate` datetime NOT NULL,
  `oramount` decimal(16,2) NOT NULL,
  `memoranda` longtext,
  PRIMARY KEY (`objid`),
  KEY `FK_faasannotation_faas` (`faasid`),
  KEY `FK_faasannotation_faasannotationtype` (`annotationtype_objid`),
  KEY `ix_faasannotation_fileno` (`fileno`),
  KEY `ix_faasannotation_orno` (`orno`),
  KEY `ix_faasannotation_state` (`state`),
  KEY `ix_faasannotation_txnno` (`txnno`),
  CONSTRAINT `FK_faasannotation_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_faasannotation_faasannotationtype` FOREIGN KEY (`annotationtype_objid`) REFERENCES `faasannotationtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faasannotation`
--

LOCK TABLES `faasannotation` WRITE;
/*!40000 ALTER TABLE `faasannotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `faasannotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faasannotation_faas`
--

DROP TABLE IF EXISTS `faasannotation_faas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faasannotation_faas` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `faas_objid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_parent_faas` (`parent_objid`,`faas_objid`),
  KEY `ix_faas_objid` (`faas_objid`),
  KEY `ix_parent_objid` (`parent_objid`),
  CONSTRAINT `fk_faasannotationfaas_faas` FOREIGN KEY (`faas_objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `fk_faasannotationfaas_faasannotation` FOREIGN KEY (`parent_objid`) REFERENCES `faasannotation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faasannotation_faas`
--

LOCK TABLES `faasannotation_faas` WRITE;
/*!40000 ALTER TABLE `faasannotation_faas` DISABLE KEYS */;
/*!40000 ALTER TABLE `faasannotation_faas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faasannotationtype`
--

DROP TABLE IF EXISTS `faasannotationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faasannotationtype` (
  `objid` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `annotationtype` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faasannotationtype`
--

LOCK TABLES `faasannotationtype` WRITE;
/*!40000 ALTER TABLE `faasannotationtype` DISABLE KEYS */;
INSERT INTO `faasannotationtype` VALUES ('CCJ','CIVIL CASE JUDGEMENT'),('MOA','MEMORANDUM OF AGREEMENT'),('MT','MORTGAGE'),('NAC','NOTICE OF ADVERSE CLAIM'),('NOA','NOTICE OF ATTACHMENT'),('NOAL','NOTICE OF ATTACHMENT/LEVY UPON REALTY'),('NB','NOTICE OF BOND'),('NOL','NOTICE OF LEVY'),('NOLES','NOTICE OF LIS PENDENS'),('NOS','NOTICE OF SHERIFF\'S'),('OFC','ORDER FROM THE COURT'),('SR','SHERIFF\'S CERTIFICATE OF SALE'),('SLVY','SHERIFF\'S NOTICE OF LEVY UPON REAL PROPERTY'),('UL','UNDER LITIGATION'),('WL','WARRANT OF LEVY');
/*!40000 ALTER TABLE `faasannotationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faasbacktax`
--

DROP TABLE IF EXISTS `faasbacktax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faasbacktax` (
  `objid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `ry` int(11) NOT NULL,
  `tdno` varchar(25) DEFAULT NULL,
  `bmv` decimal(16,2) NOT NULL,
  `mv` decimal(16,2) NOT NULL,
  `av` decimal(16,2) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `taxable` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_faasbacktax` (`faasid`),
  CONSTRAINT `FK_faasbacktax` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faasbacktax`
--

LOCK TABLES `faasbacktax` WRITE;
/*!40000 ALTER TABLE `faasbacktax` DISABLE KEYS */;
/*!40000 ALTER TABLE `faasbacktax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faasupdate`
--

DROP TABLE IF EXISTS `faasupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faasupdate` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(10) NOT NULL,
  `txndate` datetime NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `prevtitletype` varchar(25) DEFAULT NULL,
  `prevtitleno` varchar(25) DEFAULT NULL,
  `prevtitledate` datetime DEFAULT NULL,
  `prevtaxpayerid` varchar(50) NOT NULL,
  `prevtaxpayername` varchar(800) NOT NULL,
  `prevtaxpayeraddress` varchar(150) NOT NULL,
  `prevownername` varchar(800) NOT NULL,
  `prevowneraddress` varchar(150) NOT NULL,
  `prevadministratorid` varchar(50) DEFAULT NULL,
  `prevadministratorname` varchar(150) DEFAULT NULL,
  `prevadministratoraddress` varchar(100) DEFAULT NULL,
  `prevrestrictionid` varchar(50) DEFAULT NULL,
  `prevmemoranda` varchar(500) NOT NULL,
  `prevsurveyno` varchar(100) DEFAULT NULL,
  `prevcadastrallotno` varchar(100) NOT NULL,
  `prevblockno` varchar(50) DEFAULT NULL,
  `prevpurok` varchar(50) DEFAULT NULL,
  `prevstreet` varchar(100) DEFAULT NULL,
  `prevnorth` varchar(150) NOT NULL,
  `preveast` varchar(150) NOT NULL,
  `prevsouth` varchar(150) NOT NULL,
  `prevwest` varchar(150) NOT NULL,
  `faas_titletype` varchar(25) DEFAULT NULL,
  `faas_titleno` varchar(25) DEFAULT NULL,
  `faas_titledate` datetime DEFAULT NULL,
  `faas_restrictionid` varchar(50) DEFAULT NULL,
  `faas_memoranda` varchar(500) NOT NULL,
  `rp_surveyno` varchar(100) DEFAULT NULL,
  `rp_cadastrallotno` varchar(100) NOT NULL,
  `rp_blockno` varchar(50) DEFAULT NULL,
  `rp_street` varchar(100) DEFAULT NULL,
  `rp_north` varchar(150) NOT NULL,
  `rp_east` varchar(150) NOT NULL,
  `rp_south` varchar(150) NOT NULL,
  `rp_west` varchar(150) NOT NULL,
  `faas_taxpayer_objid` varchar(50) NOT NULL,
  `faas_taxpayer_name` varchar(800) NOT NULL,
  `faas_taxpayer_address` varchar(150) NOT NULL,
  `faas_owner_address` varchar(800) NOT NULL,
  `faas_owner_name` varchar(800) NOT NULL,
  `faas_administrator_name` varchar(200) DEFAULT NULL,
  `faas_administrator_objid` varchar(50) DEFAULT NULL,
  `faas_administrator_address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_faasupdate_txnno` (`txnno`),
  KEY `FK_faasupdate_faas` (`faasid`),
  CONSTRAINT `FK_faasupdate_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faasupdate`
--

LOCK TABLES `faasupdate` WRITE;
/*!40000 ALTER TABLE `faasupdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `faasupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landadjustment`
--

DROP TABLE IF EXISTS `landadjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landadjustment` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) DEFAULT NULL,
  `landdetailid` varchar(50) DEFAULT NULL,
  `adjustmenttype_objid` varchar(50) NOT NULL,
  `expr` varchar(250) NOT NULL,
  `adjustment` decimal(16,2) DEFAULT '0.00',
  `type` varchar(2) NOT NULL,
  `basemarketvalue` decimal(16,2) DEFAULT NULL,
  `marketvalue` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_landadjustment_landadjustmenttype` (`adjustmenttype_objid`),
  KEY `FK_landadjustment_landdetail` (`landdetailid`),
  KEY `FK_landadjustment_landrpu` (`landrpuid`),
  CONSTRAINT `FK_landadjustment_landadjustmenttype` FOREIGN KEY (`adjustmenttype_objid`) REFERENCES `landadjustmenttype` (`objid`),
  CONSTRAINT `FK_landadjustment_landdetail` FOREIGN KEY (`landdetailid`) REFERENCES `landdetail` (`objid`),
  CONSTRAINT `FK_landadjustment_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landadjustment`
--

LOCK TABLES `landadjustment` WRITE;
/*!40000 ALTER TABLE `landadjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `landadjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landadjustmentparameter`
--

DROP TABLE IF EXISTS `landadjustmentparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landadjustmentparameter` (
  `objid` varchar(50) NOT NULL,
  `landadjustmentid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  `parameter_objid` varchar(50) NOT NULL,
  `value` decimal(16,2) NOT NULL,
  `param_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_landadjustmentparameter_landadjustment` (`landadjustmentid`),
  KEY `FK_landadjustmentparameter_landrpu` (`landrpuid`),
  KEY `FK_landadjustmentparameter_rptparameter` (`parameter_objid`),
  CONSTRAINT `FK_landadjustmentparameter_landadjustment` FOREIGN KEY (`landadjustmentid`) REFERENCES `landadjustment` (`objid`),
  CONSTRAINT `FK_landadjustmentparameter_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_landadjustmentparameter_rptparameter` FOREIGN KEY (`parameter_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landadjustmentparameter`
--

LOCK TABLES `landadjustmentparameter` WRITE;
/*!40000 ALTER TABLE `landadjustmentparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `landadjustmentparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landadjustmenttype`
--

DROP TABLE IF EXISTS `landadjustmenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landadjustmenttype` (
  `objid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `expr` longtext NOT NULL,
  `appliedto` varchar(150) DEFAULT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_landadjustment_landrysetting` (`landrysettingid`),
  KEY `ix_landadjustmenttype` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_landadjustment_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landadjustmenttype`
--

LOCK TABLES `landadjustmenttype` WRITE;
/*!40000 ALTER TABLE `landadjustmenttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `landadjustmenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landadjustmenttype_classification`
--

DROP TABLE IF EXISTS `landadjustmenttype_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landadjustmenttype_classification` (
  `landadjustmenttypeid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  PRIMARY KEY (`classification_objid`,`landadjustmenttypeid`),
  KEY `FK_landadjustment_classification_landrysetting` (`landrysettingid`),
  KEY `FK_landadjustmenttype_classification_classification` (`classification_objid`),
  KEY `FK_landadjustmenttype_landadjustment` (`landadjustmenttypeid`),
  CONSTRAINT `FK_landadjustmenttype_classification_classification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_landadjustmenttype_landadjustment` FOREIGN KEY (`landadjustmenttypeid`) REFERENCES `landadjustmenttype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landadjustmenttype_classification`
--

LOCK TABLES `landadjustmenttype_classification` WRITE;
/*!40000 ALTER TABLE `landadjustmenttype_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `landadjustmenttype_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landassesslevel`
--

DROP TABLE IF EXISTS `landassesslevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landassesslevel` (
  `objid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_landassesslevel_code` (`landrysettingid`,`code`),
  UNIQUE KEY `ux_landassesslevel_name` (`landrysettingid`,`name`),
  KEY `FK_landassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_landassesslevel_previd` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_landassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_landassesslevl_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landassesslevel`
--

LOCK TABLES `landassesslevel` WRITE;
/*!40000 ALTER TABLE `landassesslevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `landassesslevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landassesslevelrange`
--

DROP TABLE IF EXISTS `landassesslevelrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `landassesslevelid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_landassesslevelrange_landassesslevel` (`landassesslevelid`),
  KEY `ix_landassesslevelrange_rootid` (`landrysettingid`),
  CONSTRAINT `FK_landassesslevel_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_landassesslevelrange_landassesslevel` FOREIGN KEY (`landassesslevelid`) REFERENCES `landassesslevel` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landassesslevelrange`
--

LOCK TABLES `landassesslevelrange` WRITE;
/*!40000 ALTER TABLE `landassesslevelrange` DISABLE KEYS */;
/*!40000 ALTER TABLE `landassesslevelrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landdetail`
--

DROP TABLE IF EXISTS `landdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landdetail` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  `subclass_objid` varchar(50) DEFAULT NULL,
  `specificclass_objid` varchar(50) DEFAULT NULL,
  `actualuse_objid` varchar(50) DEFAULT NULL,
  `stripping_objid` varchar(50) DEFAULT NULL,
  `striprate` decimal(16,2) NOT NULL,
  `areatype` varchar(10) NOT NULL,
  `addlinfo` varchar(250) DEFAULT NULL,
  `area` decimal(18,6) NOT NULL,
  `areasqm` decimal(18,2) NOT NULL,
  `areaha` decimal(18,6) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `taxable` int(11) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `landvalueadjustment` decimal(16,2) NOT NULL,
  `actualuseadjustment` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `landspecificclass_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_landdetail_actualuse` (`actualuse_objid`),
  KEY `FK_landdetail_landrpu` (`landrpuid`),
  KEY `FK_landdetail_lcuvspecificclass` (`specificclass_objid`),
  KEY `FK_landdetail_lcuvstripping` (`stripping_objid`),
  KEY `FK_landdetail_lcuvsubclass` (`subclass_objid`),
  CONSTRAINT `FK_landdetail_actualuse` FOREIGN KEY (`actualuse_objid`) REFERENCES `landassesslevel` (`objid`),
  CONSTRAINT `FK_landdetail_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_landdetail_lcuvspecificclass` FOREIGN KEY (`specificclass_objid`) REFERENCES `lcuvspecificclass` (`objid`),
  CONSTRAINT `FK_landdetail_lcuvsubclass` FOREIGN KEY (`subclass_objid`) REFERENCES `lcuvsubclass` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landdetail`
--

LOCK TABLES `landdetail` WRITE;
/*!40000 ALTER TABLE `landdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `landdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landrpu`
--

DROP TABLE IF EXISTS `landrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landrpu` (
  `objid` varchar(50) NOT NULL,
  `idleland` int(11) NOT NULL,
  `totallandbmv` decimal(16,2) NOT NULL,
  `totallandmv` decimal(16,2) NOT NULL,
  `totallandav` decimal(16,2) NOT NULL,
  `totalplanttreebmv` decimal(16,2) NOT NULL,
  `totalplanttreemv` decimal(16,2) NOT NULL,
  `totalplanttreeadjustment` decimal(16,2) NOT NULL,
  `totalplanttreeav` decimal(16,2) NOT NULL,
  `landvalueadjustment` decimal(16,2) NOT NULL,
  `publicland` int(11) DEFAULT NULL,
  `distanceawr` decimal(16,2) DEFAULT NULL,
  `distanceltc` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  CONSTRAINT `FK_landrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landrpu`
--

LOCK TABLES `landrpu` WRITE;
/*!40000 ALTER TABLE `landrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `landrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landrysetting`
--

DROP TABLE IF EXISTS `landrysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `ry` int(11) NOT NULL,
  `appliedto` varchar(500) DEFAULT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `ordinanceno` varchar(25) DEFAULT NULL,
  `ordinancedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_landrysetting_previd` (`previd`),
  KEY `ix_landrysetting_ry` (`ry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landrysetting`
--

LOCK TABLES `landrysetting` WRITE;
/*!40000 ALTER TABLE `landrysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `landrysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landspecificclass`
--

DROP TABLE IF EXISTS `landspecificclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landspecificclass` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ux_landspecificclass_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landspecificclass`
--

LOCK TABLES `landspecificclass` WRITE;
/*!40000 ALTER TABLE `landspecificclass` DISABLE KEYS */;
INSERT INTO `landspecificclass` VALUES ('MAC65ce3399:1674e92d986:-704b','APPROVED','COCL','COCONUT LAND'),('MAC65ce3399:1674e92d986:-7065','APPROVED','A','AGRICULTURAL LAND'),('MAC65ce3399:1674e92d986:-707f','APPROVED','ROAD','ROAD'),('MAC65ce3399:1674e92d986:-7099','APPROVED','LOW-URL','LOWLAND UNIRRIGATED RICE LAND'),('MAC65ce3399:1674e92d986:-70b3','APPROVED','LOW-IRR','LOW LAND IRRIGATED RICE LAND'),('MAC65ce3399:1674e92d986:-70cd','APPROVED','C','COMMERCIAL'),('MAC65ce3399:1674e92d986:-70e9','APPROVED','R','RESIDENTIAL');
/*!40000 ALTER TABLE `landspecificclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landtax_lgu_account_mapping`
--

DROP TABLE IF EXISTS `landtax_lgu_account_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landtax_lgu_account_mapping` (
  `objid` varchar(50) NOT NULL,
  `lgu_objid` varchar(50) NOT NULL,
  `revtype` varchar(50) NOT NULL,
  `revperiod` varchar(50) NOT NULL,
  `item_objid` varchar(50) NOT NULL,
  KEY `fk_landtaxlguaccountmapping_itemaccount` (`item_objid`),
  KEY `fk_landtaxlguaccountmapping_sysorg` (`lgu_objid`),
  KEY `ix_objid` (`objid`),
  KEY `ix_revtype` (`revtype`),
  CONSTRAINT `fk_landtaxlguaccountmapping_itemaccount` FOREIGN KEY (`item_objid`) REFERENCES `itemaccount` (`objid`),
  CONSTRAINT `fk_landtaxlguaccountmapping_sysorg` FOREIGN KEY (`lgu_objid`) REFERENCES `sys_org` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landtax_lgu_account_mapping`
--

LOCK TABLES `landtax_lgu_account_mapping` WRITE;
/*!40000 ALTER TABLE `landtax_lgu_account_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `landtax_lgu_account_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landtax_report_rptdelinquency`
--

DROP TABLE IF EXISTS `landtax_report_rptdelinquency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landtax_report_rptdelinquency` (
  `objid` varchar(50) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) DEFAULT NULL,
  `revtype` varchar(50) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `interest` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL,
  `dtgenerated` datetime NOT NULL,
  `generatedby_name` varchar(255) NOT NULL,
  `generatedby_title` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landtax_report_rptdelinquency`
--

LOCK TABLES `landtax_report_rptdelinquency` WRITE;
/*!40000 ALTER TABLE `landtax_report_rptdelinquency` DISABLE KEYS */;
/*!40000 ALTER TABLE `landtax_report_rptdelinquency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcuvspecificclass`
--

DROP TABLE IF EXISTS `lcuvspecificclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcuvspecificclass` (
  `objid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) NOT NULL,
  `areatype` varchar(10) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `landspecificclass_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_lcuvspecificclass_landrysetting` (`landrysettingid`),
  KEY `FK_lcuvspecificclass_propertyclassification` (`classification_objid`),
  KEY `ix_landspecificclass_objid` (`landspecificclass_objid`),
  KEY `ix_lcuvspecificclass_previd` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_lcuvspecificclass_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvspecificclass_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `fk_lcuvspecificclass_landspecificclass` FOREIGN KEY (`landspecificclass_objid`) REFERENCES `landspecificclass` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcuvspecificclass`
--

LOCK TABLES `lcuvspecificclass` WRITE;
/*!40000 ALTER TABLE `lcuvspecificclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcuvspecificclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcuvstripping`
--

DROP TABLE IF EXISTS `lcuvstripping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcuvstripping` (
  `objid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) NOT NULL,
  `striplevel` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_lcuvstripping_landrysetting` (`landrysettingid`),
  KEY `FK_lcuvstripping_propertyclassification` (`classification_objid`),
  KEY `ix_lcuvstripping_previd` (`previd`),
  CONSTRAINT `FK_lcuvstripping_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvstripping_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcuvstripping`
--

LOCK TABLES `lcuvstripping` WRITE;
/*!40000 ALTER TABLE `lcuvstripping` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcuvstripping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcuvsubclass`
--

DROP TABLE IF EXISTS `lcuvsubclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcuvsubclass` (
  `objid` varchar(50) NOT NULL,
  `specificclass_objid` varchar(50) NOT NULL,
  `landrysettingid` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(25) NOT NULL,
  `unitvalue` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_lcuvsubclass_code` (`landrysettingid`,`specificclass_objid`,`code`),
  UNIQUE KEY `ux_lcuvsubclass_name` (`landrysettingid`,`specificclass_objid`,`code`,`name`),
  KEY `FK_lcuvsubclass_lcuvspecificclass` (`specificclass_objid`),
  KEY `ix_lcuvsubclass_previd` (`previd`),
  KEY `ix_lcuvsubclass_rootid` (`landrysettingid`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_lcuvsubclass_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvsubclass_lcuvspecificclass` FOREIGN KEY (`specificclass_objid`) REFERENCES `lcuvspecificclass` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcuvsubclass`
--

LOCK TABLES `lcuvsubclass` WRITE;
/*!40000 ALTER TABLE `lcuvsubclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcuvsubclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machassesslevel`
--

DROP TABLE IF EXISTS `machassesslevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machassesslevel` (
  `objid` varchar(50) NOT NULL,
  `machrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_machassesslevel_settingcode` (`machrysettingid`,`code`),
  UNIQUE KEY `ux_machassesslevel_settingname` (`machrysettingid`,`name`),
  KEY `FK_machassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_machassesslevel_previd` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_machassesslevel_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`),
  CONSTRAINT `FK_machassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machassesslevel`
--

LOCK TABLES `machassesslevel` WRITE;
/*!40000 ALTER TABLE `machassesslevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `machassesslevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machassesslevelrange`
--

DROP TABLE IF EXISTS `machassesslevelrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `machassesslevelid` varchar(50) NOT NULL,
  `machrysettingid` varchar(50) NOT NULL,
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_machassesslevelrange_mvfrom` (`machrysettingid`,`machassesslevelid`,`mvfrom`),
  KEY `FK_machassesslevelrange_machassesslevel` (`machassesslevelid`),
  CONSTRAINT `FK_machassesslevelrange_machassesslevel` FOREIGN KEY (`machassesslevelid`) REFERENCES `machassesslevel` (`objid`),
  CONSTRAINT `FK_machassesslevelrange_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machassesslevelrange`
--

LOCK TABLES `machassesslevelrange` WRITE;
/*!40000 ALTER TABLE `machassesslevelrange` DISABLE KEYS */;
/*!40000 ALTER TABLE `machassesslevelrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machdetail`
--

DROP TABLE IF EXISTS `machdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machdetail` (
  `objid` varchar(50) NOT NULL,
  `machuseid` varchar(50) NOT NULL,
  `machrpuid` varchar(50) NOT NULL,
  `machine_objid` varchar(50) NOT NULL,
  `operationyear` int(11) DEFAULT NULL,
  `replacementcost` decimal(16,2) NOT NULL,
  `depreciation` decimal(16,6) DEFAULT NULL,
  `depreciationvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `serialno` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `yearacquired` int(11) DEFAULT NULL,
  `estimatedlife` int(11) DEFAULT NULL,
  `remaininglife` int(11) DEFAULT NULL,
  `yearinstalled` int(11) DEFAULT NULL,
  `yearsused` int(11) DEFAULT NULL,
  `originalcost` decimal(16,2) NOT NULL,
  `freightcost` decimal(16,2) NOT NULL,
  `insurancecost` decimal(16,2) NOT NULL,
  `installationcost` decimal(16,2) NOT NULL,
  `brokeragecost` decimal(16,2) NOT NULL,
  `arrastrecost` decimal(16,2) NOT NULL,
  `othercost` decimal(16,2) NOT NULL,
  `acquisitioncost` decimal(16,2) NOT NULL,
  `feracid` varchar(50) DEFAULT NULL,
  `ferac` decimal(16,2) DEFAULT NULL,
  `forexid` varchar(50) DEFAULT NULL,
  `forex` decimal(16,4) DEFAULT NULL,
  `residualrate` decimal(16,2) NOT NULL,
  `conversionfactor` decimal(16,2) NOT NULL,
  `swornamount` decimal(16,2) NOT NULL,
  `useswornamount` int(11) NOT NULL,
  `imported` int(11) NOT NULL,
  `newlyinstalled` int(11) NOT NULL,
  `autodepreciate` int(11) NOT NULL,
  `taxable` int(11) DEFAULT NULL,
  `smvid` varchar(50) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`objid`),
  KEY `FK_machdetail_machforex` (`feracid`),
  KEY `FK_machdetail_machforexid` (`forexid`),
  KEY `FK_machdetail_machine` (`machine_objid`),
  KEY `FK_machdetail_machrpu` (`machrpuid`),
  KEY `FK_machdetail_machuse` (`machuseid`),
  KEY `ix_smvid` (`smvid`),
  CONSTRAINT `FK_machdetail_machforex` FOREIGN KEY (`feracid`) REFERENCES `machforex` (`objid`),
  CONSTRAINT `FK_machdetail_machforexid` FOREIGN KEY (`forexid`) REFERENCES `machforex` (`objid`),
  CONSTRAINT `FK_machdetail_machine` FOREIGN KEY (`machine_objid`) REFERENCES `machine` (`objid`),
  CONSTRAINT `FK_machdetail_machrpu` FOREIGN KEY (`machrpuid`) REFERENCES `machrpu` (`objid`),
  CONSTRAINT `FK_machdetail_machuse` FOREIGN KEY (`machuseid`) REFERENCES `machuse` (`objid`),
  CONSTRAINT `fk_machdetail_machine_smv` FOREIGN KEY (`smvid`) REFERENCES `machine_smv` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machdetail`
--

LOCK TABLES `machdetail` WRITE;
/*!40000 ALTER TABLE `machdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `machdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machforex`
--

DROP TABLE IF EXISTS `machforex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machforex` (
  `objid` varchar(50) NOT NULL,
  `machrysettingid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `forex` decimal(10,6) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_machforex_settingyear` (`machrysettingid`,`year`),
  KEY `ix_machforex_previd` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_machforex_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machforex`
--

LOCK TABLES `machforex` WRITE;
/*!40000 ALTER TABLE `machforex` DISABLE KEYS */;
/*!40000 ALTER TABLE `machforex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_machine_code` (`code`),
  UNIQUE KEY `ux_machine_name` (`name`),
  KEY `ix_machine_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES ('MACH-1d573228:149e7fe512e:-6ce9','APPROVED','DEWD','DEEP WELL DRILLING'),('MACH-1d573228:149e7fe512e:-6cf2','APPROVED','DEWP','DEEP WELL PROPPING'),('MACH-1d573228:149e7fe512e:-6d18','APPROVED','SUBM','SUBMERSIBLE PUMP'),('MACH-1d573228:149e7fe512e:-6d24','APPROVED','PUMA','PUMP MACHINE'),('MACH-1d573228:149e7fe512e:-6d2d','APPROVED','CALI','CALIBRATOR'),('MACH-1d573228:149e7fe512e:-6d81','APPROVED','DRYR','DRYER'),('MACH-1d573228:149e7fe512e:-6d8f','APPROVED','SORT','SORTING MACHINE'),('MACH-1d573228:149e7fe512e:-6db9','APPROVED','CHIL','CHILLER'),('MACH-1d573228:149e7fe512e:-6dc6','APPROVED','GEEQ','GENERATOR & POWER EQUIPMENT'),('MACH-1d573228:149e7fe512e:-6dcf','APPROVED','PAEQ','PACKING EQUIPMENT'),('MACH-1d573228:149e7fe512e:-6dd8','APPROVED','WSCA','WEIGHING SCALE'),('MACH-1d573228:149e7fe512e:-6de1','APPROVED','JETP','JET PUMP'),('MACH-1d573228:149e7fe512e:-6dea','APPROVED','POEQ','POWER EQUIPMENT'),('MACH-1d573228:149e7fe512e:-6e0c','APPROVED','MACR','MACRO MOBILE BANANA PROCESSOR'),('MACH-1d573228:149e7fe512e:-6e15','APPROVED','MINI','MINI MOBILE BANANA PROCESSOR'),('MACH-1d573228:149e7fe512e:-6e32','APPROVED','WATS','WATER TREATMENT SYSTEM'),('MACH-1d573228:149e7fe512e:-6e40','APPROVED','SCRE','SCREEDER'),('MACH-1d573228:149e7fe512e:-6e49','APPROVED','CHEM','CHEMICAL MIXING EQUIPMENT'),('MACH-1d573228:149e7fe512e:-7038','APPROVED','MIPU','MIXING PUMP'),('MACH-1d573228:149e7fe512e:-7041','APPROVED','TRCA','TRANSFORMER CAGE'),('MACH-1d573228:149e7fe512e:-7070','APPROVED','EXMA','EXTRUDER MACHINE'),('MACH-1d573228:149e7fe512e:-708b','APPROVED','POLI','POLISHER'),('MACH-1d573228:149e7fe512e:-7094','APPROVED','RIHO','RICE HOLLER'),('MACH-1d573228:149e7fe512e:-709d','APPROVED','CONO','BABY CONO'),('MACH-1d573228:149e7fe512e:-70a6','APPROVED','GRIN','GRINDER'),('MACH-1d573228:149e7fe512e:-70af','APPROVED','MOEN','MOTOR ENGINE WITH ACCESSORIES'),('MACH-1d573228:149e7fe512e:-70b8','APPROVED','ENGI','ENGINE SET WITH APPARATUS'),('MACH-1d573228:149e7fe512e:-70ca','APPROVED','RORO','ROUGH ROLLER'),('MACH-1d573228:149e7fe512e:-70ea','APPROVED','RIMI','RICE MILL MACHINE'),('MACH-1d573228:149e7fe512e:-70f3','APPROVED','COMI','CORN MILL MACHINE'),('MACH-1d573228:149e7fe512e:-70fc','APPROVED','AIRC','AIRCONDITION UNIT'),('MACH-1d573228:149e7fe512e:-7105','APPROVED','BTSE','BTS EQUIPMENT'),('MACH-1d573228:149e7fe512e:-710e','APPROVED','FEED','FEEDERS'),('MACH-1d573228:149e7fe512e:-7117','APPROVED','RECT','RECTIFIERS'),('MACH-1d573228:149e7fe512e:-7120','APPROVED','MICRO','MICROVE RADIUS'),('MACH-1d573228:149e7fe512e:-7129','APPROVED','ALAR','ALARM'),('MACH-1d573228:149e7fe512e:-7141','APPROVED','CETO','CELLULAR TOWER'),('MACH-1d573228:149e7fe512e:-7179','APPROVED','COND','CONDENSER'),('MACH-1d573228:149e7fe512e:-7182','APPROVED','COMP','COMPRESSOR'),('MACH-1d573228:149e7fe512e:-718b','APPROVED','AGIT','AGITATOR'),('MACH-1d573228:149e7fe512e:-7194','APPROVED','TROL','TROLLEY'),('MACH-1d573228:149e7fe512e:-719d','APPROVED','TOWE','TOWER'),('MACH-1d573228:149e7fe512e:-71be','APPROVED','TANK','TANK'),('MACH-1d573228:149e7fe512e:-71c7','APPROVED','WARE','WASTE REFILLER'),('MACH-1d573228:149e7fe512e:-71d3','APPROVED','WATA','WATER TANK'),('MACH-1d573228:149e7fe512e:-71e7','APPROVED','BLOW','BLOWER'),('MACH-1d573228:149e7fe512e:-71f5','APPROVED','VAGE','VAULT GENERATOR'),('MACH-1d573228:149e7fe512e:-720a','APPROVED','WASO','WATER SOFTENER'),('MACH-1d573228:149e7fe512e:-7213','APPROVED','BOIL','BOILER'),('MACH-1d573228:149e7fe512e:-721c','APPROVED','GLME','GLUE MIXING EQUIPMENT'),('MACH-1d573228:149e7fe512e:-722c','APPROVED','RECO','RE-CONDITIONER'),('MACH-1d573228:149e7fe512e:-7235','APPROVED','FAMA','FACER MACHINERY'),('MACH-1d573228:149e7fe512e:-723e','APPROVED','ROST','ROLL STAND'),('MACH-1d573228:149e7fe512e:-7247','APPROVED','DIDM','DIRECT DRIVE MODEL'),('MACH-1d573228:149e7fe512e:-7250','APPROVED','KNIF','KNIFE SINGLE AUTO DEON STACKER'),('MACH-1d573228:149e7fe512e:-7259','APPROVED','SLIT','SLITTER SCORER'),('MACH-1d573228:149e7fe512e:-726b','APPROVED','GLUE','GLUE MACHINERY'),('MACH-1d573228:149e7fe512e:-7274','APPROVED','HEAT','HEATER'),('MACH-1d573228:149e7fe512e:-727d','APPROVED','BRID','BRIDGE DOUBLE OVERHEAD'),('MACH-1d573228:149e7fe512e:-7286','APPROVED','SPLI','SPLICES MACHINE'),('MACH-1d573228:149e7fe512e:-728f','APPROVED','WAYC','WAY COATER'),('MACH-1d573228:149e7fe512e:-7298','APPROVED','TRIM','TRIM BLOWER & CHOPPER'),('MACH-1d573228:149e7fe512e:-72a1','APPROVED','AUBM','AUTOMATIC BAKER MACHINE'),('MACH-1d573228:149e7fe512e:-72aa','APPROVED','SHMA','SHREDDER MACHINE'),('MACH-1d573228:149e7fe512e:-72b3','APPROVED','READ','REFRIGERATED AIR DRYER'),('MACH-1d573228:149e7fe512e:-72bc','APPROVED','ROSC','ROTARY SCREW COMPRESSOR'),('MACH-1d573228:149e7fe512e:-72c5','APPROVED','WWTP','WASTE WATER TREATMENT PLANT'),('MACH-1d573228:149e7fe512e:-72d5','APPROVED','STRA','STEE RACK'),('MACH-1d573228:149e7fe512e:-72de','APPROVED','LUFL','LUMINAR FLOW'),('MACH-1d573228:149e7fe512e:-72e7','APPROVED','MOTO','MOTOR PUMP'),('MACH-1d573228:149e7fe512e:-72f7','APPROVED','CVOL','CONTROL VOLTAGE'),('MACH-1d573228:149e7fe512e:-7300','APPROVED','ESYS','ELECTRIC LINE SYSTEM'),('MACH-1d573228:149e7fe512e:-7309','APPROVED','ELGE','ELECTRIC GENERATOR'),('MACH-1d573228:149e7fe512e:-7319','APPROVED','VOLT','VOLTAGE REGULATOR'),('MACH-1d573228:149e7fe512e:-7322','APPROVED','SYPB','SYNCHRONIZING PANEL BOARD'),('MACH-1d573228:149e7fe512e:-732b','APPROVED','TRLE','TRANSMISSION LINE EQUIPMENT'),('MACH-1d573228:149e7fe512e:-7334','APPROVED','COWI','COMPOUND WIRING'),('MACH-1d573228:149e7fe512e:-733d','APPROVED','KMTR','KILOWATT HOUR METER'),('MACH-1d573228:149e7fe512e:-7346','APPROVED','RADI','RADIO EQUIPMENT'),('MACH-1d573228:149e7fe512e:-7371','APPROVED','UNGT','UNDERGROUND TANK'),('MACH-1d573228:149e7fe512e:-7380','APPROVED','DIPU','DISPENSING PUMPS'),('MACH-1d573228:149e7fe512e:-7389','APPROVED','DIEP','DIESEL ENGINE POWER EQUIPMENT'),('MACH-1d573228:149e7fe512e:-7392','APPROVED','DEEP','DEEP WELL'),('MACH-1d573228:149e7fe512e:-73ab','APPROVED','STBA','STEEL BASE'),('MACH-1d573228:149e7fe512e:-73b4','APPROVED','HPCP','HIGH PRESSURE CLEANING PUMP'),('MACH-1d573228:149e7fe512e:-73cb','APPROVED','WSCO','WATER SYSTEM COMPLEX'),('MACH-1d573228:149e7fe512e:-73dc','APPROVED','SNMA','SNAPPING MACHINE'),('MACH-1d573228:149e7fe512e:-73fb','APPROVED','MOPA','MOTOR PUMPS & ACCESSORIES'),('MACH-1d573228:149e7fe512e:-7404','APPROVED','SUPU','SUMP PUMP'),('MACH-1d573228:149e7fe512e:-740d','APPROVED','MIDR','MICRO-DRIP IRRIGATION SYSTEM'),('MACH-1d573228:149e7fe512e:-7416','APPROVED','PICC','PIPELINES & CONCRETE CANALS'),('MACH-1d573228:149e7fe512e:-741f','APPROVED','PIPE','PIPELINES'),('MACH-1d573228:149e7fe512e:-7428','APPROVED','PUAC','PUMP & ACCESSORIES'),('MACH-1d573228:149e7fe512e:-7431','APPROVED','PEMA','PACKING EQUIPMENT MACHINERIES'),('MACH-1d573228:149e7fe512e:-743a','APPROVED','SHWP','SHALLOW WELL PUMP'),('MACH-1d573228:149e7fe512e:-7451','APPROVED','SPMA','STRAPPING MACHINE'),('MACH-1d573228:149e7fe512e:-745a','APPROVED','SKMA','STICKING MACHINE'),('MACH-1d573228:149e7fe512e:-7463','APPROVED','SPPU','SPRAY PUMP'),('MACH-1d573228:149e7fe512e:-746c','APPROVED','GRCO','GRAVITY CONVEYORS'),('MACH-1d573228:149e7fe512e:-7475','APPROVED','FLFS','FLAT FORM SCALES'),('MACH-1d573228:149e7fe512e:-747e','APPROVED','FLTA','FLOWTATION TANK'),('MACH-1d573228:149e7fe512e:-7487','APPROVED','ELMO','ELECTRIC MOTOR'),('MACH-1d573228:149e7fe512e:-7490','APPROVED','MEFP','MEDIA FILTERS PIPES'),('MACH-1d573228:149e7fe512e:-7499','APPROVED','TRAN','TRANSFORMER'),('MACH-1d573228:149e7fe512e:-74a2','APPROVED','AICO','AIR COMPRESSOR'),('MACH-1d573228:149e7fe512e:-74ab','APPROVED','STEE','STEEL TANK'),('MACH-1d573228:149e7fe512e:-74b6','APPROVED','ANTE','ANTENNA'),('MACH-1d573228:149e7fe512e:-74bf','APPROVED','PLAS','PLASTIC PELLETS MAKING MACHINE'),('MACH-1d573228:149e7fe512e:-74cd','APPROVED','DRIP','DRIP IRRIGATION'),('MACH-38f70c63:14c69d45960:-7fcd','APPROVED','ECUT','ELECTRIC CUTTER'),('MACH-38f70c63:14c69d45960:-7fd9','APPROVED','EPLN','ELECTRIC PLAINER'),('MACH-43fbdca7:14bc41f4676:-6cbb','APPROVED','AERI','AERIAL PROPPING SYSTEM'),('MACH-43fbdca7:14bc41f4676:-6cc7','APPROVED','GUYI','GUYING'),('MACH-4d44203a:14bc865709b:3ee7','APPROVED','MILL','MILL MACHINE'),('MACH-52380a52:14c011e374a:-10ce','APPROVED','ELPU','ELECTRIC PUMP'),('MACH-655bb946:14b991f861f:-3cc3','APPROVED','BXLC','BOX LIFT CONVEYOR WITH MOTOR'),('MACH-655bb946:14b991f861f:-3ccf','APPROVED','RJCM','REJECT CONVEYOR WITH MOTOR'),('MACH-655bb946:14b991f861f:-3cd8','APPROVED','FOGG','FOGGING SYSTEM'),('MACH-655bb946:14b991f861f:-3ce4','APPROVED','STIC','STICHING MACHINE'),('MACH1817c3b1:14c10b2141c:-7fce','APPROVED','FILT','FILTER TANK'),('MACH1817c3b1:14c10b2141c:-7fd7','APPROVED','GOUL','GOULD PUMP'),('MACH1d761657:14a978354ae:-7b07','APPROVED','MOPP','MOBILE PACKING PLANT'),('MACH1d761657:14a978354ae:-7b1a','APPROVED','DIMA','DISPENSING MACHINE'),('MACH1d761657:14a978354ae:-7b34','APPROVED','MASH','MACHINE SHED'),('MACH25003ed1:14c554e4ca8:-7f87','DRAFT','SAWC','BANDSAW WITH CARRIAGE'),('MACH25003ed1:14c554e4ca8:-7f93','APPROVED','GRNB','BENCH GRINDER'),('MACH25003ed1:14c554e4ca8:-7fa8','APPROVED','TSAW','TRIMMER SAW'),('MACH25003ed1:14c554e4ca8:-7fb4','APPROVED','SAWT','TABLE BANDSAW'),('MACH25003ed1:14c554e4ca8:-7fc0','APPROVED','BAND','BANDSAW'),('MACH25003ed1:14c554e4ca8:-7fcc','APPROVED','SAWM','MINI BANDSAW'),('MACH25003ed1:14c554e4ca8:-7fd8','APPROVED','CUTT','CUTTER'),('MACH5dc36edc:147eb035ac1:-7609','APPROVED','PUDI','PUMP DISPENSER'),('MACH5dc36edc:147eb035ac1:-7612','APPROVED','OVCP','OVERHEAD CABLE PROPPING'),('MACH71a4b1f7:147d72b1f11:-608c','APPROVED','AUTM','AUTOMATED TELLER MACHINE'),('MACH71a4b1f7:147d72b1f11:-60ae','APPROVED','WAPU','WATER PUMP'),('MACH71a4b1f7:147d72b1f11:-60c2','APPROVED','GSET','GENERATOR SET'),('MACH71a4b1f7:147d72b1f11:-60ce','APPROVED','CABL','CABLEWAYS'),('MACH7bb659d:14bfc00eb50:30c8','APPROVED','MDRY','MECHANIC DRYER'),('MACH7bb659d:14bfc00eb50:30d4','APPROVED','GRAN','GRANULATOR'),('MACH7bb659d:14bfc00eb50:30e0','APPROVED','PULV','PULVERIZER'),('MACH7bb659d:14bfc00eb50:30ec','APPROVED','TRUC','TRUCK SCALE');
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_smv`
--

DROP TABLE IF EXISTS `machine_smv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine_smv` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `machine_objid` varchar(50) NOT NULL,
  `expr` varchar(255) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_parent_machine` (`parent_objid`,`machine_objid`),
  KEY `ix_machine_objid` (`machine_objid`),
  KEY `ix_parent_objid` (`parent_objid`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `fk_machinesmv_machine` FOREIGN KEY (`machine_objid`) REFERENCES `machine` (`objid`),
  CONSTRAINT `fk_machinesmv_machinesmv` FOREIGN KEY (`previd`) REFERENCES `machine_smv` (`objid`),
  CONSTRAINT `fk_machinesmv_machrysetting` FOREIGN KEY (`parent_objid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_smv`
--

LOCK TABLES `machine_smv` WRITE;
/*!40000 ALTER TABLE `machine_smv` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine_smv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machrpu`
--

DROP TABLE IF EXISTS `machrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machrpu` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) DEFAULT NULL,
  `bldgmaster_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_machrpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_machrpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_machrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machrpu`
--

LOCK TABLES `machrpu` WRITE;
/*!40000 ALTER TABLE `machrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `machrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machrysetting`
--

DROP TABLE IF EXISTS `machrysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `ry` int(11) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `appliedto` longtext,
  `residualrate` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `ordinanceno` varchar(25) DEFAULT NULL,
  `ordinancedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_machrysetting_machrysetting` (`previd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machrysetting`
--

LOCK TABLES `machrysetting` WRITE;
/*!40000 ALTER TABLE `machrysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `machrysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machuse`
--

DROP TABLE IF EXISTS `machuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machuse` (
  `objid` varchar(50) NOT NULL,
  `machrpuid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `taxable` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_actualuseid_taxable` (`machrpuid`,`actualuse_objid`,`taxable`),
  KEY `FK_machuse_machassesslevel` (`actualuse_objid`),
  KEY `FK_machuse_machrpu` (`machrpuid`),
  CONSTRAINT `FK_machuse_machassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `machassesslevel` (`objid`),
  CONSTRAINT `FK_machuse_machrpu` FOREIGN KEY (`machrpuid`) REFERENCES `machrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machuse`
--

LOCK TABLES `machuse` WRITE;
/*!40000 ALTER TABLE `machuse` DISABLE KEYS */;
/*!40000 ALTER TABLE `machuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_material_code` (`code`),
  UNIQUE KEY `ux_material_name` (`name`),
  KEY `ix_material_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('ALUM','APPROVED','ALUM','ALUMINUM'),('ANAH','APPROVED','ANAH','ANAHAW'),('ASBE','APPROVED','ASBE','ASBESTOS'),('BAMB','APPROVED','BAMB','BAMBOO'),('BUAW','APPROVED','BUAW','BUILD-A-WALL'),('CDEC','APPROVED','CDEC','CONCRETE DECK'),('CHB','APPROVED','COHB','CONCRETE HOLLOW BLOCK'),('COGO','APPROVED','COGO','COGON'),('GISHEET','APPROVED','GISH','G.I. SHEET'),('LSPA','APPROVED','LSPA','LONG SPAN'),('MARB','APPROVED','MARB','MARBLE'),('MAT-12ad08a1:14af095881c:-7d33','APPROVED','ROCE','ROUGH CEMENT'),('MAT-18a7635d:14b93645f4b:-57a8','APPROVED','CYCL','CYCLONE WIRE'),('MAT-18a7635d:14b93645f4b:-6ccc','APPROVED','OPEN','OPEN'),('MAT-1d573228:149e7fe512e:-306d','APPROVED','WTRU','WOOD TRUSS'),('MAT-1d573228:149e7fe512e:-6c9b','APPROVED','CPLA','CEMENT PLASTER'),('MAT-1d573228:149e7fe512e:-6ca4','APPROVED','ANAY','ANAY FINISHED'),('MAT-1d573228:149e7fe512e:-6cc3','APPROVED','CGSH','CORRIGATED G.I. SHEET'),('MAT-1d573228:149e7fe512e:-6ccc','APPROVED','CEME','CEMENT'),('MAT-1d573228:149e7fe512e:-6cdb','APPROVED','SOIL','SOIL'),('MAT-388551fc:14a0be486c3:-2402','APPROVED','COCO','COCO LUMBER'),('MAT-388551fc:14a0be486c3:-240b','APPROVED','KALA','KALAKAT'),('MAT34cebd50:1491f8d8c9d:-7fb6','APPROVED','AMAK','AMAKAN'),('MAT431e49c0:14b0a2d917e:-748f','APPROVED','RTGS','RIB TYPE GALVA STEEL'),('MAT78789b8a:1480e4fa143:-7e27','APPROVED','PLYW','PLYWOOD'),('NIPA','APPROVED','NIPA','NIPA'),('PLCE','APPROVED','PLCE','PLAIN CEMENT'),('RECO','APPROVED','RECO','REINFORCED CONCRETE'),('SAWA','APPROVED','SAWA','SAWALI'),('TILE','APPROVED','TILE','TILES'),('WOOD','APPROVED','WOOD','WOOD');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcsettlement`
--

DROP TABLE IF EXISTS `mcsettlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcsettlement` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) DEFAULT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `memoranda` longtext,
  `prevfaas_objid` varchar(50) DEFAULT NULL,
  `newfaas_objid` varchar(50) DEFAULT NULL,
  `newtdno` varchar(25) DEFAULT NULL,
  `signatories` longtext NOT NULL,
  `lgutype` varchar(25) NOT NULL,
  `lguid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_mcsettlement_newfaas` (`newfaas_objid`),
  KEY `FK_mcsettlement_prevfaas` (`prevfaas_objid`),
  KEY `ix_lguid` (`lguid`),
  KEY `ix_mcsettlement_state` (`state`),
  KEY `ix_mcsettlement_txnno` (`txnno`),
  CONSTRAINT `FK_mcsettlement_newfaas` FOREIGN KEY (`newfaas_objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_mcsettlement_prevfaas` FOREIGN KEY (`prevfaas_objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcsettlement`
--

LOCK TABLES `mcsettlement` WRITE;
/*!40000 ALTER TABLE `mcsettlement` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcsettlement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcsettlement_affectedrpu`
--

DROP TABLE IF EXISTS `mcsettlement_affectedrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcsettlement_affectedrpu` (
  `objid` varchar(50) NOT NULL,
  `mcsettlementid` varchar(50) NOT NULL,
  `rputype` varchar(15) NOT NULL,
  `prevfaas_objid` varchar(50) NOT NULL,
  `newfaas_objid` varchar(50) DEFAULT NULL,
  `newtdno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_mcaffectedrpu_prevfaas_objid` (`prevfaas_objid`),
  KEY `ix_mcaffectedrpu_mcid` (`mcsettlementid`),
  KEY `ix_mcaffectedrpu_newfaas_objid` (`newfaas_objid`),
  KEY `ix_mcaffectedrpu_prevfaas_objid` (`prevfaas_objid`),
  CONSTRAINT `FK_mcaffectedrpu_mc` FOREIGN KEY (`mcsettlementid`) REFERENCES `mcsettlement` (`objid`),
  CONSTRAINT `FK_mcaffectedrpu_newfaas` FOREIGN KEY (`newfaas_objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_mcaffectedrpu_prevfaas` FOREIGN KEY (`prevfaas_objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcsettlement_affectedrpu`
--

LOCK TABLES `mcsettlement_affectedrpu` WRITE;
/*!40000 ALTER TABLE `mcsettlement_affectedrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcsettlement_affectedrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcsettlement_otherclaim`
--

DROP TABLE IF EXISTS `mcsettlement_otherclaim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcsettlement_otherclaim` (
  `objid` varchar(50) NOT NULL,
  `mcsettlementid` varchar(50) NOT NULL,
  `faas_objid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_mcotherclaim_faas_objid` (`faas_objid`),
  KEY `ix_mcotherclaim_faas_objid` (`faas_objid`),
  KEY `ix_mcotherclaim_mcid` (`mcsettlementid`),
  CONSTRAINT `FK_mcotherclaim_faas` FOREIGN KEY (`faas_objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_mcotherclaim_mc` FOREIGN KEY (`mcsettlementid`) REFERENCES `mcsettlement` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcsettlement_otherclaim`
--

LOCK TABLES `mcsettlement_otherclaim` WRITE;
/*!40000 ALTER TABLE `mcsettlement_otherclaim` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcsettlement_otherclaim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memoranda_template`
--

DROP TABLE IF EXISTS `memoranda_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memoranda_template` (
  `objid` varchar(50) NOT NULL,
  `code` varchar(25) NOT NULL,
  `template` varchar(500) NOT NULL,
  `fields` longtext,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memoranda_template`
--

LOCK TABLES `memoranda_template` WRITE;
/*!40000 ALTER TABLE `memoranda_template` DISABLE KEYS */;
INSERT INTO `memoranda_template` VALUES ('MT-71298b1f:19dd715d773:-e9','01','this is a memoranda','[]');
/*!40000 ALTER TABLE `memoranda_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscassesslevel`
--

DROP TABLE IF EXISTS `miscassesslevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscassesslevel` (
  `objid` varchar(50) NOT NULL,
  `miscrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_miscassesslevel_settingcode` (`miscrysettingid`,`code`),
  UNIQUE KEY `ux_miscassesslevel_settingname` (`miscrysettingid`,`name`),
  KEY `FK_miscassesslevel_classification` (`classification_objid`),
  KEY `ix_miscassesslevel_previd` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_miscassesslevel_classification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_miscassesslevel_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscassesslevel`
--

LOCK TABLES `miscassesslevel` WRITE;
/*!40000 ALTER TABLE `miscassesslevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscassesslevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscassesslevelrange`
--

DROP TABLE IF EXISTS `miscassesslevelrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `miscassesslevelid` varchar(50) NOT NULL,
  `miscrysettingid` varchar(50) NOT NULL,
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_miscassesslevelrange_miscassesslevel` (`miscassesslevelid`),
  KEY `FK_miscassesslevelrange_miscrysetting` (`miscrysettingid`),
  CONSTRAINT `FK_miscassesslevelrange_miscassesslevel` FOREIGN KEY (`miscassesslevelid`) REFERENCES `miscassesslevel` (`objid`),
  CONSTRAINT `FK_miscassesslevelrange_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscassesslevelrange`
--

LOCK TABLES `miscassesslevelrange` WRITE;
/*!40000 ALTER TABLE `miscassesslevelrange` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscassesslevelrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscitem`
--

DROP TABLE IF EXISTS `miscitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscitem` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_miscitem_code` (`code`),
  UNIQUE KEY `ux_miscitem_name` (`name`),
  KEY `ix_miscitem_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscitem`
--

LOCK TABLES `miscitem` WRITE;
/*!40000 ALTER TABLE `miscitem` DISABLE KEYS */;
INSERT INTO `miscitem` VALUES ('MI-71298b1f:19dd715d773:-a89','DRAFT','FENCE','PERIMETER FENCE');
/*!40000 ALTER TABLE `miscitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscitemvalue`
--

DROP TABLE IF EXISTS `miscitemvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscitemvalue` (
  `objid` varchar(50) NOT NULL,
  `miscrysettingid` varchar(50) NOT NULL,
  `miscitem_objid` varchar(50) NOT NULL,
  `expr` varchar(100) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_miscitemvalue_rysetting_item` (`miscrysettingid`,`miscitem_objid`),
  KEY `FK_miscitemvalue_miscitem` (`miscitem_objid`),
  KEY `ix_miscitemvalue_previd` (`previd`),
  KEY `ix_previd` (`previd`),
  CONSTRAINT `FK_miscitemvalue_miscitem` FOREIGN KEY (`miscitem_objid`) REFERENCES `miscitem` (`objid`),
  CONSTRAINT `FK_miscitemvalue_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscitemvalue`
--

LOCK TABLES `miscitemvalue` WRITE;
/*!40000 ALTER TABLE `miscitemvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscitemvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscrpu`
--

DROP TABLE IF EXISTS `miscrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscrpu` (
  `objid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) DEFAULT NULL,
  `landrpuid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_miscrpu_miscassesslevel` (`actualuse_objid`),
  CONSTRAINT `FK_miscrpu_miscassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `miscassesslevel` (`objid`),
  CONSTRAINT `FK_miscrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscrpu`
--

LOCK TABLES `miscrpu` WRITE;
/*!40000 ALTER TABLE `miscrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscrpuitem`
--

DROP TABLE IF EXISTS `miscrpuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscrpuitem` (
  `objid` varchar(50) NOT NULL,
  `miscrpuid` varchar(50) NOT NULL,
  `miv_objid` varchar(50) NOT NULL,
  `miscitem_objid` varchar(50) NOT NULL,
  `expr` varchar(255) NOT NULL,
  `depreciation` decimal(16,2) NOT NULL,
  `depreciatedvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `appraisalstartdate` date DEFAULT NULL,
  `taxable` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_miscrpuitem_miscitem` (`miscitem_objid`),
  KEY `FK_miscrpuitem_miscitemvalue` (`miv_objid`),
  KEY `FK_miscrpuitem_miscrpu` (`miscrpuid`),
  CONSTRAINT `FK_miscrpuitem_miscitem` FOREIGN KEY (`miscitem_objid`) REFERENCES `miscitem` (`objid`),
  CONSTRAINT `FK_miscrpuitem_miscitemvalue` FOREIGN KEY (`miv_objid`) REFERENCES `miscitemvalue` (`objid`),
  CONSTRAINT `FK_miscrpuitem_miscrpu` FOREIGN KEY (`miscrpuid`) REFERENCES `miscrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscrpuitem`
--

LOCK TABLES `miscrpuitem` WRITE;
/*!40000 ALTER TABLE `miscrpuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscrpuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscrpuitem_rptparameter`
--

DROP TABLE IF EXISTS `miscrpuitem_rptparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscrpuitem_rptparameter` (
  `miscrpuitemid` varchar(50) NOT NULL,
  `param_objid` varchar(50) NOT NULL,
  `miscrpuid` varchar(50) NOT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `decimalvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY (`miscrpuitemid`,`param_objid`),
  KEY `FK_miscrpuitem_rptparameter_` (`miscrpuid`),
  KEY `FK_miscrpuitem_rptparameter_rptparamer` (`param_objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_` FOREIGN KEY (`miscrpuid`) REFERENCES `miscrpu` (`objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_miscrpuitem` FOREIGN KEY (`miscrpuitemid`) REFERENCES `miscrpuitem` (`objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_rptparamer` FOREIGN KEY (`param_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscrpuitem_rptparameter`
--

LOCK TABLES `miscrpuitem_rptparameter` WRITE;
/*!40000 ALTER TABLE `miscrpuitem_rptparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscrpuitem_rptparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscrysetting`
--

DROP TABLE IF EXISTS `miscrysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `ry` int(11) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `appliedto` longtext,
  `remarks` varchar(200) DEFAULT NULL,
  `ordinanceno` varchar(25) DEFAULT NULL,
  `ordinancedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_miscrysetting_ry` (`ry`),
  KEY `ix_miscrysetting_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscrysetting`
--

LOCK TABLES `miscrysetting` WRITE;
/*!40000 ALTER TABLE `miscrysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscrysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipality_taxaccount_mapping`
--

DROP TABLE IF EXISTS `municipality_taxaccount_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipality_taxaccount_mapping` (
  `lguid` varchar(50) NOT NULL,
  `basicadvacct_objid` varchar(50) DEFAULT NULL,
  `basicprevacct_objid` varchar(50) DEFAULT NULL,
  `basicprevintacct_objid` varchar(50) DEFAULT NULL,
  `basicprioracct_objid` varchar(50) DEFAULT NULL,
  `basicpriorintacct_objid` varchar(50) DEFAULT NULL,
  `basiccurracct_objid` varchar(50) DEFAULT NULL,
  `basiccurrintacct_objid` varchar(50) DEFAULT NULL,
  `sefadvacct_objid` varchar(50) DEFAULT NULL,
  `sefprevacct_objid` varchar(50) DEFAULT NULL,
  `sefprevintacct_objid` varchar(50) DEFAULT NULL,
  `sefprioracct_objid` varchar(50) DEFAULT NULL,
  `sefpriorintacct_objid` varchar(50) DEFAULT NULL,
  `sefcurracct_objid` varchar(50) DEFAULT NULL,
  `sefcurrintacct_objid` varchar(50) DEFAULT NULL,
  `basicidlecurracct_objid` varchar(50) DEFAULT NULL,
  `basicidlecurrintacct_objid` varchar(50) DEFAULT NULL,
  `basicidleprevacct_objid` varchar(50) DEFAULT NULL,
  `basicidleprevintacct_objid` varchar(50) DEFAULT NULL,
  `basicidleadvacct_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lguid`),
  KEY `ix_lguid` (`lguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipality_taxaccount_mapping`
--

LOCK TABLES `municipality_taxaccount_mapping` WRITE;
/*!40000 ALTER TABLE `municipality_taxaccount_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `municipality_taxaccount_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin`
--

DROP TABLE IF EXISTS `pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_lgu_barangay` (`barangayid`),
  KEY `ix_pin_state` (`state`),
  CONSTRAINT `FK_pin_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin`
--

LOCK TABLES `pin` WRITE;
/*!40000 ALTER TABLE `pin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planttree`
--

DROP TABLE IF EXISTS `planttree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planttree` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_planttree_code` (`code`),
  UNIQUE KEY `ux_planttree_name` (`name`),
  KEY `ix_planttree_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttree`
--

LOCK TABLES `planttree` WRITE;
/*!40000 ALTER TABLE `planttree` DISABLE KEYS */;
INSERT INTO `planttree` VALUES ('PT-2cb2e946:147f4943e9a:-77e0','APPROVED','UPLA','UPLAND RICE'),('PT-2cb2e946:147f4943e9a:-77ee','APPROVED','STAR','STAR APPLE'),('PT-2cb2e946:147f4943e9a:-77fc','APPROVED','JACK','JACKFRUIT'),('PT-2cb2e946:147f4943e9a:-785a','APPROVED','SANT','SANTOL'),('PT-40c36a84:147d7147e85:-7e20','APPROVED','VEGE','VEGETABLE TRACK'),('PT-40c36a84:147d7147e85:-7e29','APPROVED','TREE','TREE FARM'),('PT-40c36a84:147d7147e85:-7e32','APPROVED','TIMB','TIMBER LAND'),('PT-40c36a84:147d7147e85:-7e3b','APPROVED','SWIN','SWINE LAND'),('PT-40c36a84:147d7147e85:-7e44','APPROVED','SWAM','SWAMPLAND'),('PT-40c36a84:147d7147e85:-7e4d','APPROVED','SOYB','SOYBEANS'),('PT-40c36a84:147d7147e85:-7e56','APPROVED','SORG','SORGHUM'),('PT-40c36a84:147d7147e85:-7e5f','APPROVED','RUBB','RUBBER'),('PT-40c36a84:147d7147e85:-7e68','APPROVED','ROOT','ROOTCROPS'),('PT-40c36a84:147d7147e85:-7e71','APPROVED','RIWO','RICE WITHOUT IRRIGATION'),('PT-40c36a84:147d7147e85:-7e7a','APPROVED','RIWI','RICE WITH IRRIGATION'),('PT-40c36a84:147d7147e85:-7e83','APPROVED','RAMI','RAMIE'),('PT-40c36a84:147d7147e85:-7e8c','APPROVED','RAMB','RAMBUTAN'),('PT-40c36a84:147d7147e85:-7e95','APPROVED','POME','POMELO'),('PT-40c36a84:147d7147e85:-7e9e','APPROVED','PINE','PINEAPPLE'),('PT-40c36a84:147d7147e85:-7eaa','APPROVED','PAST','PASTURE LAND'),('PT-40c36a84:147d7147e85:-7eb3','APPROVED','PAPA','PAPAYA'),('PT-40c36a84:147d7147e85:-7ebc','APPROVED','PALM','PALM OIL'),('PT-40c36a84:147d7147e85:-7ec5','APPROVED','ORCH','ORCHARD'),('PT-40c36a84:147d7147e85:-7ece','APPROVED','NIPA','NIPA'),('PT-40c36a84:147d7147e85:-7ed7','APPROVED','MARS','MARSH'),('PT-40c36a84:147d7147e85:-7ee0','APPROVED','MARA','MARANG'),('PT-40c36a84:147d7147e85:-7ee9','APPROVED','MROV','MANGROOVE'),('PT-40c36a84:147d7147e85:-7ef2','APPROVED','MATN','MANGOSTEEN'),('PT-40c36a84:147d7147e85:-7efb','APPROVED','MANG','MANGO'),('PT-40c36a84:147d7147e85:-7f04','APPROVED','MAHO','MAHOGANY'),('PT-40c36a84:147d7147e85:-7f0d','APPROVED','LANZ','LANZONES'),('PT-40c36a84:147d7147e85:-7f16','APPROVED','IPIL','IPIL-IPIL'),('PT-40c36a84:147d7147e85:-7f1f','APPROVED','GEME','GEMELINA'),('PT-40c36a84:147d7147e85:-7f28','APPROVED','FORE','FOREST LAND'),('PT-40c36a84:147d7147e85:-7f31','APPROVED','FLOW','FLOWER LAND'),('PT-40c36a84:147d7147e85:-7f4a','APPROVED','FISI','FISHPOND INLAND'),('PT-40c36a84:147d7147e85:-7f53','APPROVED','FISH','FISHPOND'),('PT-40c36a84:147d7147e85:-7f5c','APPROVED','FALC','FALCATA'),('PT-40c36a84:147d7147e85:-7f65','APPROVED','DURI','DURIAN'),('PT-40c36a84:147d7147e85:-7f6e','APPROVED','CORN','CORN'),('PT-40c36a84:147d7147e85:-7f77','APPROVED','COGO','COGON'),('PT-40c36a84:147d7147e85:-7f80','APPROVED','COFF','COFFEE'),('PT-40c36a84:147d7147e85:-7f89','APPROVED','COCO','COCONUT'),('PT-40c36a84:147d7147e85:-7f92','APPROVED','CATT','CATTLE'),('PT-40c36a84:147d7147e85:-7f9b','APPROVED','CALA','CALAMANSI'),('PT-40c36a84:147d7147e85:-7fa4','APPROVED','CACA','CACAO'),('PT-40c36a84:147d7147e85:-7faf','APPROVED','BRUS','BRUSH LAND'),('PT-40c36a84:147d7147e85:-7fb8','APPROVED','BALO','BANANA LOCAL'),('PT-40c36a84:147d7147e85:-7fc1','APPROVED','BAEX','BANANA EXPORT'),('PT-40c36a84:147d7147e85:-7fca','APPROVED','BAMB','BAMBOO'),('PT-40c36a84:147d7147e85:-7fd3','APPROVED','BAGR','BAGRASS'),('PT-40c36a84:147d7147e85:-7fdc','APPROVED','ABAC','ABACA'),('PT-53a6d50d:14c34ba226f:-20a5','APPROVED','CITD','CITRUS (TREE)'),('PT-53a6d50d:14c34ba226f:-20bd','APPROVED','CITR','CITRUS'),('PT-53a6d50d:14c34ba226f:-f50','APPROVED','MACD','MACOPA (TREE)'),('PT-53a6d50d:14c34ba226f:-f8f','APPROVED','MACO','MACOPA'),('PT-7ceaf220:147d821beaa:-7d79','APPROVED','BANG','BANGKAL'),('PT-7ceaf220:147d821beaa:-7d82','APPROVED','BOGO','BOGO'),('PT-7ceaf220:147d821beaa:-7d8b','APPROVED','PAGA','PAGATPAT'),('PT-7ceaf220:147d821beaa:-7d94','APPROVED','ULAY','ULAYAN'),('PT-7ceaf220:147d821beaa:-7d9d','APPROVED','LANU','LANUTA'),('PT-7ceaf220:147d821beaa:-7da6','APPROVED','AMUG','AMUGUIS'),('PT-7ceaf220:147d821beaa:-7daf','APPROVED','MANM','MANGIUM'),('PT-7ceaf220:147d821beaa:-7db8','APPROVED','ECAM','E. CAMALDONES'),('PT-7ceaf220:147d821beaa:-7dc1','APPROVED','EBAG','E. BAGRAS'),('PT-7ceaf220:147d821beaa:-7dca','APPROVED','ACAC','ACACIA'),('PT-7ceaf220:147d821beaa:-7dd3','APPROVED','TALI','TALISAY'),('PT-7ceaf220:147d821beaa:-7ddc','APPROVED','LANI','LANIPAO'),('PT-7ceaf220:147d821beaa:-7de5','APPROVED','TUOG','TUOG'),('PT-7ceaf220:147d821beaa:-7dee','APPROVED','LUKT','LUKTOB'),('PT-7ceaf220:147d821beaa:-7df7','APPROVED','BAKA','BAKAN'),('PT-7ceaf220:147d821beaa:-7e00','APPROVED','ANTI','ANTIPOLO'),('PT-7ceaf220:147d821beaa:-7e09','APPROVED','BENG','BENGUET PINES'),('PT-7ceaf220:147d821beaa:-7e12','APPROVED','GUBA','GUBAS'),('PT-7ceaf220:147d821beaa:-7e1b','APPROVED','THAI','THAILAND ACACIA'),('PT-7ceaf220:147d821beaa:-7e24','APPROVED','KAMA','KAMANSI'),('PT-7ceaf220:147d821beaa:-7e2d','APPROVED','RIAN','RIAN TREE'),('PT-7ceaf220:147d821beaa:-7e36','APPROVED','MALU','MALUGAY'),('PT-7ceaf220:147d821beaa:-7e3f','APPROVED','LAUW','LAUAN WHITE'),('PT-7ceaf220:147d821beaa:-7e48','APPROVED','LAUR','LAUAN RED'),('PT-7ceaf220:147d821beaa:-7e51','APPROVED','FIRE','FIRE TREE'),('PT-7ceaf220:147d821beaa:-7e5a','APPROVED','DURIN','DURIAN NATIVE'),('PT-7ceaf220:147d821beaa:-7e63','APPROVED','COLO','COLO/BREADFRUIT'),('PT-7ceaf220:147d821beaa:-7e6c','APPROVED','CALI','CALIANDRA'),('PT-7ceaf220:147d821beaa:-7e75','APPROVED','BANO','BANOYO'),('PT-7ceaf220:147d821beaa:-7e7e','APPROVED','AFRI','AFRICAN TULIP'),('PT-7ceaf220:147d821beaa:-7e87','APPROVED','AGOH','AGOHO'),('PT-7ceaf220:147d821beaa:-7e90','APPROVED','HIMB','HIMBABAO'),('PT-7ceaf220:147d821beaa:-7e99','APPROVED','DITA','DITA'),('PT-7ceaf220:147d821beaa:-7ea2','APPROVED','MALA','MALAPAPAYA'),('PT-7ceaf220:147d821beaa:-7eab','APPROVED','KAPO','KAPOK (DOLDOL)'),('PT-7ceaf220:147d821beaa:-7eb4','APPROVED','ILAN','ILANG-ILANG'),('PT-7ceaf220:147d821beaa:-7ebd','APPROVED','KALU','KALUMPANG'),('PT-7ceaf220:147d821beaa:-7ec6','APPROVED','BINU','BINUANG'),('PT-7ceaf220:147d821beaa:-7ecf','APPROVED','ANIB','ANIBUANG'),('PT-7ceaf220:147d821beaa:-7ed8','APPROVED','TEAK','TEAK-PREMIUM SPP'),('PT-7ceaf220:147d821beaa:-7ee1','APPROVED','ALMO','ALMON'),('PT-7ceaf220:147d821beaa:-7eea','APPROVED','BAGT','BAGTIKAN'),('PT-7ceaf220:147d821beaa:-7eff','APPROVED','TANG','TANGUILE'),('PT-7ceaf220:147d821beaa:-7f08','APPROVED','NARR','NARRA-PREMIUM SPP'),('PT-7ceaf220:147d821beaa:-7f11','APPROVED','KAMG','KAMAGONG'),('PT-7ceaf220:147d821beaa:-7f1a','APPROVED','IPILP','IPIL-PREMIUM SPP'),('PT2bd5d118:147f4103d2c:-3b4a','APPROVED','OTFR','OTHER FRUIT'),('PT2bd5d118:147f4103d2c:-3d92','APPROVED','DAO','DAO'),('PT2bd5d118:147f4103d2c:-44cd','APPROVED','MOLA','MOLAVE - PREMIUM SPP'),('PT3ee3248:14b9902e4f4:-7e22','APPROVED','RUBI','RUBBER (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7e2b','APPROVED','PAMI','PALM OIL (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7ee8','APPROVED','NPAI','NIPA (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7ef1','APPROVED','MANI','MANGO (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7efa','APPROVED','DRNI','DURIAN (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7f03','APPROVED','COFI','COFFEE (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7f0c','APPROVED','COCI','COCONUT (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7f15','APPROVED','CACI','CACAO (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7f1e','APPROVED','BALI','BANANA LOCAL (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7f2d','APPROVED','BAXI','BANANA EXPORT (IMPROVEMENT)'),('PT3ee3248:14b9902e4f4:-7f36','APPROVED','BAMI','BAMBOO (IMPROVEMENT)'),('PT5a11dd55:14c064d62f1:-62e4','APPROVED','MATD','MANGOSTEEN (TREE)'),('PT5a11dd55:14c064d62f1:-6690','APPROVED','DUHD','DUHAT (TREE)'),('PT5a11dd55:14c064d62f1:-6699','APPROVED','DUHA','DUHAT'),('PT5a11dd55:14c064d62f1:-66a5','APPROVED','ATID','ATIS (TREE)'),('PT5a11dd55:14c064d62f1:-66ae','APPROVED','ATIS','ATIS'),('PT5a11dd55:14c064d62f1:-66b7','APPROVED','GUYD','GUYABANO (TREE)'),('PT5a11dd55:14c064d62f1:-66c0','APPROVED','GUYA','GUYABANO'),('PT5a11dd55:14c064d62f1:-66c9','APPROVED','CHID','CHICO (TREE)'),('PT5a11dd55:14c064d62f1:-66d2','APPROVED','CHIC','CHICO'),('PT5a11dd55:14c064d62f1:-66db','APPROVED','AVOD','AVOCADO (TREE)'),('PT5a11dd55:14c064d62f1:-66e4','APPROVED','AVOC','AVOCADO'),('PT5a11dd55:14c064d62f1:-66ed','APPROVED','GUAD','GUAVA (TREE)'),('PT5a11dd55:14c064d62f1:-6709','APPROVED','GUAV','GUAVA'),('PT5a11dd55:14c064d62f1:-6775','APPROVED','STAD','STAR APPLE (TREE)'),('PT5a11dd55:14c064d62f1:-677e','APPROVED','SAND','SANTOL (TREE)'),('PT5a11dd55:14c064d62f1:-6787','APPROVED','JACD','JACKFRUIT (TREE)'),('PT5a11dd55:14c064d62f1:-6790','APPROVED','MARD','MARANG ((TREE)'),('PT5a11dd55:14c064d62f1:-68c4','APPROVED','RUBD','RUBBER (TREE)'),('PT5a11dd55:14c064d62f1:-68cd','APPROVED','RAMD','RAMBUTAN (TREE)'),('PT5a11dd55:14c064d62f1:-68d6','APPROVED','POMD','POMELO (TREE)'),('PT5a11dd55:14c064d62f1:-68df','APPROVED','PAPD','PAPAYA (PLANT)'),('PT5a11dd55:14c064d62f1:-68e8','APPROVED','PALD','PALM OIL (TREE)'),('PT5a11dd55:14c064d62f1:-68f1','APPROVED','NIPD','NIPA (CLUMP)'),('PT5a11dd55:14c064d62f1:-68fa','APPROVED','MAND','MANGO (TREE)'),('PT5a11dd55:14c064d62f1:-6903','APPROVED','DURD','DURIAN (TREE)'),('PT5a11dd55:14c064d62f1:-690c','APPROVED','COCD','COCONUT (TREE)'),('PT5a11dd55:14c064d62f1:-6915','APPROVED','COFD','COFFEE (TREE)'),('PT5a11dd55:14c064d62f1:-691e','APPROVED','CALD','CALAMANSI (TREE)'),('PT5a11dd55:14c064d62f1:-6949','APPROVED','BALD','BANANA LOCAL (HILL)'),('PT5a11dd55:14c064d62f1:-6952','APPROVED','BAMD','BAMBOO (CLUMP)'),('PT5a11dd55:14c064d62f1:-6ecf','APPROVED','CACD','CACAO (HILL)'),('PT5dc36edc:147eb035ac1:-7508','APPROVED','MABO','MABOLO');
/*!40000 ALTER TABLE `planttree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planttreeassesslevel`
--

DROP TABLE IF EXISTS `planttreeassesslevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planttreeassesslevel` (
  `objid` varchar(50) NOT NULL,
  `planttreerysettingid` varchar(50) NOT NULL,
  `code` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `fixrate` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_planttreeassesslevel_settingcode` (`planttreerysettingid`,`code`),
  UNIQUE KEY `ux_planttreeassesslevel_settingname` (`planttreerysettingid`,`name`),
  KEY `FK_planttreeassesslevel_planttreeassesslevel` (`previd`),
  CONSTRAINT `FK_planttreeassesslevel_planttreerysetting` FOREIGN KEY (`planttreerysettingid`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttreeassesslevel`
--

LOCK TABLES `planttreeassesslevel` WRITE;
/*!40000 ALTER TABLE `planttreeassesslevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `planttreeassesslevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planttreedetail`
--

DROP TABLE IF EXISTS `planttreedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planttreedetail` (
  `objid` varchar(50) NOT NULL,
  `planttreerpuid` varchar(50) DEFAULT NULL,
  `landrpuid` varchar(50) DEFAULT NULL,
  `planttreeunitvalue_objid` varchar(50) NOT NULL,
  `planttree_objid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `productive` decimal(16,2) NOT NULL,
  `nonproductive` decimal(16,2) NOT NULL,
  `nonproductiveage` varchar(25) DEFAULT NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `adjustmentrate` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `areacovered` decimal(16,4) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_planttreedetail_landrpu` (`landrpuid`),
  KEY `FK_planttreedetail_plantreeassesslevel` (`actualuse_objid`),
  KEY `FK_planttreedetail_planttree` (`planttree_objid`),
  KEY `FK_planttreedetail_planttreerpu` (`planttreerpuid`),
  KEY `FK_planttreedetail_planttreeunitvalue` (`planttreeunitvalue_objid`),
  CONSTRAINT `FK_planttreedetail_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_planttreedetail_plantreeassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `planttreeassesslevel` (`objid`),
  CONSTRAINT `FK_planttreedetail_planttree` FOREIGN KEY (`planttree_objid`) REFERENCES `planttree` (`objid`),
  CONSTRAINT `FK_planttreedetail_planttreerpu` FOREIGN KEY (`planttreerpuid`) REFERENCES `planttreerpu` (`objid`),
  CONSTRAINT `FK_planttreedetail_planttreeunitvalue` FOREIGN KEY (`planttreeunitvalue_objid`) REFERENCES `planttreeunitvalue` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttreedetail`
--

LOCK TABLES `planttreedetail` WRITE;
/*!40000 ALTER TABLE `planttreedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `planttreedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planttreerpu`
--

DROP TABLE IF EXISTS `planttreerpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planttreerpu` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  `productive` decimal(16,2) NOT NULL,
  `nonproductive` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_planttreerpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_planttreerpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_planttreerpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttreerpu`
--

LOCK TABLES `planttreerpu` WRITE;
/*!40000 ALTER TABLE `planttreerpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `planttreerpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planttreerysetting`
--

DROP TABLE IF EXISTS `planttreerysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planttreerysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `ry` int(11) NOT NULL,
  `applyagriadjustment` int(11) DEFAULT NULL,
  `appliedto` longtext,
  `previd` varchar(50) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `ordinanceno` varchar(25) DEFAULT NULL,
  `ordinancedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_planttreerysetting_planttreerysetting` (`previd`),
  KEY `ix_planttreerysetting_ry` (`ry`),
  CONSTRAINT `FK_planttreerysetting_planttreerysetting` FOREIGN KEY (`previd`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttreerysetting`
--

LOCK TABLES `planttreerysetting` WRITE;
/*!40000 ALTER TABLE `planttreerysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `planttreerysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planttreeunitvalue`
--

DROP TABLE IF EXISTS `planttreeunitvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planttreeunitvalue` (
  `objid` varchar(50) NOT NULL,
  `planttreerysettingid` varchar(50) NOT NULL,
  `planttree_objid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `unitvalue` decimal(10,2) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_planttreeunitvalue_settingplanttreecode` (`planttreerysettingid`,`planttree_objid`,`code`),
  UNIQUE KEY `ux_planttreeunitvalue_settingplanttreename` (`planttreerysettingid`,`planttree_objid`,`name`),
  KEY `FK_planttreeunitvalue_planttree` (`planttree_objid`),
  KEY `FK_planttreeunitvalue_planttreeunitvalue` (`previd`),
  CONSTRAINT `FK_planttreeunitvalue_planttree` FOREIGN KEY (`planttree_objid`) REFERENCES `planttree` (`objid`),
  CONSTRAINT `FK_planttreeunitvalue_planttreerysetting` FOREIGN KEY (`planttreerysettingid`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttreeunitvalue`
--

LOCK TABLES `planttreeunitvalue` WRITE;
/*!40000 ALTER TABLE `planttreeunitvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `planttreeunitvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previousfaas`
--

DROP TABLE IF EXISTS `previousfaas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previousfaas` (
  `faasid` varchar(50) NOT NULL,
  `prevfaasid` varchar(50) NOT NULL,
  PRIMARY KEY (`faasid`,`prevfaasid`),
  KEY `FK_previousfaas_prevfaas` (`prevfaasid`),
  CONSTRAINT `FK_previousfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_previousfaas_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previousfaas`
--

LOCK TABLES `previousfaas` WRITE;
/*!40000 ALTER TABLE `previousfaas` DISABLE KEYS */;
/*!40000 ALTER TABLE `previousfaas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyclassification`
--

DROP TABLE IF EXISTS `propertyclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertyclassification` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `special` int(11) NOT NULL,
  `orderno` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_propertyclassification_code` (`code`),
  UNIQUE KEY `ux_propertyclassification_name` (`name`),
  KEY `ix_propertyclassification_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyclassification`
--

LOCK TABLES `propertyclassification` WRITE;
/*!40000 ALTER TABLE `propertyclassification` DISABLE KEYS */;
INSERT INTO `propertyclassification` VALUES ('AGRICULTURAL','APPROVED','A','AGRICULTURAL',0,2),('CEMETERY','APPROVED','SC','CEMETERY',1,57),('COMMERCIAL','APPROVED','C','COMMERCIAL',0,3),('CULTURAL','APPROVED','SU','CULTURAL',1,56),('GOCC','APPROVED','SG','GOCC',1,51),('HOSPITAL','APPROVED','SH','HOSPITAL',1,50),('INDUSTRIAL','APPROVED','I','INDUSTRIAL',0,4),('MINERAL','APPROVED','M','MINERAL',0,5),('NIA','APPROVED','SN','NIA',1,54),('RECREATIONAL ','APPROVED','SR','RECREATIONAL ',1,53),('RESIDENTIAL','APPROVED','R','RESIDENTIAL',0,1),('SCIENTIFIC','APPROVED','SS','SCIENTIFIC',1,52),('TIMBERLAND','APPROVED','T','TIMBERLAND',0,6),('WATER DISTRICT','APPROVED','SW','WATER DISTRICT',1,55);
/*!40000 ALTER TABLE `propertyclassification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertypayer`
--

DROP TABLE IF EXISTS `propertypayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertypayer` (
  `objid` varchar(50) NOT NULL,
  `taxpayer_objid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_propertypayer_taxpayerid` (`taxpayer_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertypayer`
--

LOCK TABLES `propertypayer` WRITE;
/*!40000 ALTER TABLE `propertypayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertypayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertypayer_item`
--

DROP TABLE IF EXISTS `propertypayer_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertypayer_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `rptledger_objid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_propertypayeritem_rptledgerid` (`parentid`,`rptledger_objid`),
  KEY `ix_propertypayeritem_parentid` (`parentid`),
  KEY `ix_propertypayeritem_rptledgerid` (`rptledger_objid`),
  CONSTRAINT `FK_propertypayeritem_propertypayer` FOREIGN KEY (`parentid`) REFERENCES `propertypayer` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertypayer_item`
--

LOCK TABLES `propertypayer_item` WRITE;
/*!40000 ALTER TABLE `propertypayer_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertypayer_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province_taxaccount_mapping`
--

DROP TABLE IF EXISTS `province_taxaccount_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province_taxaccount_mapping` (
  `objid` varchar(50) NOT NULL,
  `basicadvacct_objid` varchar(50) DEFAULT NULL,
  `basicprevacct_objid` varchar(50) DEFAULT NULL,
  `basicprevintacct_objid` varchar(50) DEFAULT NULL,
  `basicprioracct_objid` varchar(50) DEFAULT NULL,
  `basicpriorintacct_objid` varchar(50) DEFAULT NULL,
  `basiccurracct_objid` varchar(50) DEFAULT NULL,
  `basiccurrintacct_objid` varchar(50) DEFAULT NULL,
  `sefadvacct_objid` varchar(50) DEFAULT NULL,
  `sefprevacct_objid` varchar(50) DEFAULT NULL,
  `sefprevintacct_objid` varchar(50) DEFAULT NULL,
  `sefprioracct_objid` varchar(50) DEFAULT NULL,
  `sefpriorintacct_objid` varchar(50) DEFAULT NULL,
  `sefcurracct_objid` varchar(50) DEFAULT NULL,
  `sefcurrintacct_objid` varchar(50) DEFAULT NULL,
  `basicidlecurracct_objid` varchar(50) DEFAULT NULL,
  `basicidlecurrintacct_objid` varchar(50) DEFAULT NULL,
  `basicidleprevacct_objid` varchar(50) DEFAULT NULL,
  `basicidleprevintacct_objid` varchar(50) DEFAULT NULL,
  `basicidleadvacct_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province_taxaccount_mapping`
--

LOCK TABLES `province_taxaccount_mapping` WRITE;
/*!40000 ALTER TABLE `province_taxaccount_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `province_taxaccount_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realproperty`
--

DROP TABLE IF EXISTS `realproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realproperty` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `autonumber` int(11) NOT NULL,
  `pintype` varchar(5) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `ry` int(11) NOT NULL,
  `claimno` varchar(5) DEFAULT NULL,
  `section` varchar(3) NOT NULL,
  `parcel` varchar(3) NOT NULL,
  `cadastrallotno` varchar(300) DEFAULT NULL,
  `blockno` varchar(255) DEFAULT NULL,
  `surveyno` varchar(30) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `purok` varchar(100) DEFAULT NULL,
  `north` varchar(500) DEFAULT NULL,
  `south` varchar(500) DEFAULT NULL,
  `east` varchar(500) DEFAULT NULL,
  `west` varchar(500) DEFAULT NULL,
  `barangayid` varchar(50) NOT NULL,
  `lgutype` varchar(50) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `lguid` varchar(50) DEFAULT NULL,
  `stewardshipno` varchar(3) DEFAULT NULL,
  `portionof` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_barangayid` (`barangayid`),
  KEY `ix_lguid` (`lguid`),
  KEY `ix_realproperty_blockno` (`blockno`),
  KEY `ix_realproperty_brgysection` (`barangayid`,`section`),
  KEY `ix_realproperty_brgystate` (`barangayid`,`state`),
  KEY `ix_realproperty_cadastrallotno` (`cadastrallotno`(255)),
  KEY `ix_realproperty_claimno` (`claimno`),
  KEY `ix_realproperty_pin` (`pin`),
  KEY `ix_realproperty_ry` (`ry`),
  KEY `ix_realproperty_surveyno` (`surveyno`),
  CONSTRAINT `FK_realproperty_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realproperty`
--

LOCK TABLES `realproperty` WRITE;
/*!40000 ALTER TABLE `realproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `realproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remote_mapping`
--

DROP TABLE IF EXISTS `remote_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remote_mapping` (
  `objid` varchar(50) NOT NULL,
  `doctype` varchar(50) NOT NULL,
  `remote_objid` varchar(50) NOT NULL,
  `createdby_name` varchar(255) NOT NULL,
  `createdby_title` varchar(100) DEFAULT NULL,
  `dtcreated` datetime NOT NULL,
  `orgcode` varchar(10) DEFAULT NULL,
  `remote_orgcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_doctype` (`doctype`),
  KEY `ix_orgcode` (`orgcode`),
  KEY `ix_remote_objid` (`remote_objid`),
  KEY `ix_remote_orgcode` (`remote_orgcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remote_mapping`
--

LOCK TABLES `remote_mapping` WRITE;
/*!40000 ALTER TABLE `remote_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `remote_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptcollection_annual_bypayer`
--

DROP TABLE IF EXISTS `report_rptcollection_annual_bypayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptcollection_annual_bypayer` (
  `rputype` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `payer_name` varchar(2000) NOT NULL,
  `amount` decimal(50,2) DEFAULT NULL,
  `dtgenerated` datetime NOT NULL,
  KEY `ix_payer` (`payer_name`(255)),
  KEY `ix_rputype` (`rputype`),
  KEY `ix_year` (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptcollection_annual_bypayer`
--

LOCK TABLES `report_rptcollection_annual_bypayer` WRITE;
/*!40000 ALTER TABLE `report_rptcollection_annual_bypayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptcollection_annual_bypayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptdelinquency`
--

DROP TABLE IF EXISTS `report_rptdelinquency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptdelinquency` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `dtgenerated` datetime NOT NULL,
  `dtcomputed` datetime NOT NULL,
  `generatedby_name` varchar(255) NOT NULL,
  `generatedby_title` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptdelinquency`
--

LOCK TABLES `report_rptdelinquency` WRITE;
/*!40000 ALTER TABLE `report_rptdelinquency` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptdelinquency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptdelinquency_barangay`
--

DROP TABLE IF EXISTS `report_rptdelinquency_barangay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptdelinquency_barangay` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `processed` int(11) NOT NULL,
  `errors` int(11) NOT NULL,
  `ignored` int(11) NOT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptdelinquency_barangay_barangay` (`barangayid`),
  KEY `fk_rptdelinquency_barangay_rptdelinquency` (`parentid`),
  CONSTRAINT `fk_rptdelinquency_barangay_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`),
  CONSTRAINT `fk_rptdelinquency_barangay_rptdelinquency` FOREIGN KEY (`parentid`) REFERENCES `report_rptdelinquency` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptdelinquency_barangay`
--

LOCK TABLES `report_rptdelinquency_barangay` WRITE;
/*!40000 ALTER TABLE `report_rptdelinquency_barangay` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptdelinquency_barangay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptdelinquency_error`
--

DROP TABLE IF EXISTS `report_rptdelinquency_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptdelinquency_error` (
  `objid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `error` longtext,
  `ignored` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_barangayid` (`barangayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptdelinquency_error`
--

LOCK TABLES `report_rptdelinquency_error` WRITE;
/*!40000 ALTER TABLE `report_rptdelinquency_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptdelinquency_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptdelinquency_forprocess`
--

DROP TABLE IF EXISTS `report_rptdelinquency_forprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptdelinquency_forprocess` (
  `objid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_barangayid` (`barangayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptdelinquency_forprocess`
--

LOCK TABLES `report_rptdelinquency_forprocess` WRITE;
/*!40000 ALTER TABLE `report_rptdelinquency_forprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptdelinquency_forprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptdelinquency_item`
--

DROP TABLE IF EXISTS `report_rptdelinquency_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptdelinquency_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) DEFAULT NULL,
  `revtype` varchar(50) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `interest` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptdelinquency_barangay_rptdelinquency` (`parentid`),
  KEY `fk_rptdelinquency_item_barangay` (`barangayid`),
  KEY `fk_rptdelinquency_item_rptdelinquency` (`parentid`),
  KEY `fk_rptdelinquency_item_rptledger` (`rptledgerid`),
  KEY `ix_year` (`year`),
  CONSTRAINT `fk_rptdelinquency_item_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`),
  CONSTRAINT `fk_rptdelinquency_item_rptdelinquency` FOREIGN KEY (`parentid`) REFERENCES `report_rptdelinquency` (`objid`),
  CONSTRAINT `fk_rptdelinquency_item_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptdelinquency_item`
--

LOCK TABLES `report_rptdelinquency_item` WRITE;
/*!40000 ALTER TABLE `report_rptdelinquency_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptdelinquency_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_rptdelinquency_total_bytaxpayer`
--

DROP TABLE IF EXISTS `report_rptdelinquency_total_bytaxpayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_rptdelinquency_total_bytaxpayer` (
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `ledgercount` int(11) DEFAULT NULL,
  KEY `ix_amount` (`amount`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_taxpayer_objid` (`taxpayer_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_rptdelinquency_total_bytaxpayer`
--

LOCK TABLES `report_rptdelinquency_total_bytaxpayer` WRITE;
/*!40000 ALTER TABLE `report_rptdelinquency_total_bytaxpayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_rptdelinquency_total_bytaxpayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resection`
--

DROP TABLE IF EXISTS `resection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resection` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` datetime NOT NULL,
  `lgu_objid` varchar(50) NOT NULL,
  `barangay_objid` varchar(50) NOT NULL,
  `pintype` varchar(3) NOT NULL,
  `section` varchar(3) NOT NULL,
  `originlgu_objid` varchar(50) NOT NULL,
  `memoranda` varchar(255) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  `taskstate` varchar(50) DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_resection_txnno` (`txnno`),
  KEY `FK_resection_barangay_org` (`barangay_objid`),
  KEY `FK_resection_lgu_org` (`lgu_objid`),
  KEY `FK_resection_originlgu_org` (`originlgu_objid`),
  KEY `ix_resection_state` (`state`),
  CONSTRAINT `FK_resection_barangay_org` FOREIGN KEY (`barangay_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `FK_resection_lgu_org` FOREIGN KEY (`lgu_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `FK_resection_originlgu_org` FOREIGN KEY (`originlgu_objid`) REFERENCES `sys_org` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resection`
--

LOCK TABLES `resection` WRITE;
/*!40000 ALTER TABLE `resection` DISABLE KEYS */;
/*!40000 ALTER TABLE `resection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resection_item`
--

DROP TABLE IF EXISTS `resection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resection_item` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `faas_objid` varchar(50) NOT NULL,
  `faas_rputype` varchar(15) NOT NULL,
  `faas_pin` varchar(25) NOT NULL,
  `faas_suffix` int(11) NOT NULL,
  `newfaas_objid` varchar(50) DEFAULT NULL,
  `newfaas_rpuid` varchar(50) DEFAULT NULL,
  `newfaas_rpid` varchar(50) DEFAULT NULL,
  `newfaas_section` varchar(3) DEFAULT NULL,
  `newfaas_parcel` varchar(3) DEFAULT NULL,
  `newfaas_suffix` int(11) DEFAULT NULL,
  `newfaas_tdno` varchar(25) DEFAULT NULL,
  `newfaas_fullpin` varchar(50) DEFAULT NULL,
  `newfaas_claimno` varchar(25) DEFAULT NULL,
  `faas_claimno` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_resection_item_tdno` (`newfaas_tdno`),
  KEY `FK_resection_item_faas` (`faas_objid`),
  KEY `FK_resection_item_item` (`parent_objid`),
  KEY `FK_resection_item_newfaas` (`newfaas_objid`),
  KEY `ix_resection_item_fullpin` (`newfaas_fullpin`),
  CONSTRAINT `FK_resection_item_faas` FOREIGN KEY (`faas_objid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_resection_item_item` FOREIGN KEY (`parent_objid`) REFERENCES `resection` (`objid`),
  CONSTRAINT `FK_resection_item_newfaas` FOREIGN KEY (`newfaas_objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resection_item`
--

LOCK TABLES `resection_item` WRITE;
/*!40000 ALTER TABLE `resection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `resection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resection_task`
--

DROP TABLE IF EXISTS `resection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resection_task` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` longtext,
  `returnedby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resection_task`
--

LOCK TABLES `resection_task` WRITE;
/*!40000 ALTER TABLE `resection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `resection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_changeinfo`
--

DROP TABLE IF EXISTS `rpt_changeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_changeinfo` (
  `objid` varchar(50) NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `rpid` varchar(50) DEFAULT NULL,
  `rpuid` varchar(50) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `reason` longtext NOT NULL,
  `newinfo` longtext NOT NULL,
  `previnfo` longtext NOT NULL,
  `dtposted` datetime NOT NULL,
  `postedbyid` varchar(50) DEFAULT NULL,
  `postedby` varchar(100) NOT NULL,
  `postedbytitle` varchar(100) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `redflagid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_changeinfo`
--

LOCK TABLES `rpt_changeinfo` WRITE;
/*!40000 ALTER TABLE `rpt_changeinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_changeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_redflag`
--

DROP TABLE IF EXISTS `rpt_redflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_redflag` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `refno` varchar(15) NOT NULL,
  `caseno` varchar(25) NOT NULL,
  `message` longtext,
  `filedby_date` datetime NOT NULL,
  `filedby_objid` varchar(50) NOT NULL,
  `filedby_name` varchar(150) NOT NULL,
  `action` varchar(50) NOT NULL,
  `resolvedby_objid` varchar(50) DEFAULT NULL,
  `resolvedby_name` varchar(150) DEFAULT NULL,
  `resolvedby_date` datetime DEFAULT NULL,
  `lguid` varchar(15) NOT NULL,
  `dtclosed` datetime DEFAULT NULL,
  `remarks` longtext,
  `info` longtext,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptredflag_caseno` (`caseno`),
  KEY `ix_rptredflag_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_redflag`
--

LOCK TABLES `rpt_redflag` WRITE;
/*!40000 ALTER TABLE `rpt_redflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_redflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_requirement`
--

DROP TABLE IF EXISTS `rpt_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_requirement` (
  `objid` varchar(50) NOT NULL,
  `requirementtypeid` varchar(50) NOT NULL,
  `handler` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `value_objid` varchar(50) DEFAULT NULL,
  `value_txnno` varchar(50) DEFAULT NULL,
  `value_txndate` date DEFAULT NULL,
  `value_txnamount` decimal(16,2) DEFAULT NULL,
  `value_remarks` longtext,
  `complied` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptrequirement_refid` (`refid`),
  KEY `ix_rptrequirement_requirementtypeid` (`requirementtypeid`),
  KEY `ix_rptrequirement_valueobjid` (`value_objid`),
  CONSTRAINT `FK_rptrequirement_rptrequirementtype` FOREIGN KEY (`requirementtypeid`) REFERENCES `rpt_requirement_type` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_requirement`
--

LOCK TABLES `rpt_requirement` WRITE;
/*!40000 ALTER TABLE `rpt_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_requirement_type`
--

DROP TABLE IF EXISTS `rpt_requirement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_requirement_type` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `handler` varchar(100) DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptrequirementtype_name` (`name`),
  KEY `ix_rptrequirementtype_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_requirement_type`
--

LOCK TABLES `rpt_requirement_type` WRITE;
/*!40000 ALTER TABLE `rpt_requirement_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_requirement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_sales_data`
--

DROP TABLE IF EXISTS `rpt_sales_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_sales_data` (
  `objid` varchar(50) NOT NULL,
  `seller_name` varchar(250) NOT NULL,
  `seller_address` varchar(100) NOT NULL,
  `buyer_name` varchar(250) NOT NULL,
  `buyer_address` varchar(100) NOT NULL,
  `saledate` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`objid`),
  KEY `ix_buyername` (`buyer_name`),
  KEY `ix_FK_faas_sales_data` (`objid`),
  KEY `ix_sellername` (`seller_name`),
  CONSTRAINT `FK_faas_sales_data` FOREIGN KEY (`objid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_sales_data`
--

LOCK TABLES `rpt_sales_data` WRITE;
/*!40000 ALTER TABLE `rpt_sales_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_sales_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_sms`
--

DROP TABLE IF EXISTS `rpt_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_sms` (
  `objid` varchar(50) NOT NULL,
  `traceid` varchar(50) DEFAULT NULL,
  `phoneno` varchar(50) NOT NULL,
  `logdate` datetime NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `action` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptsms_phoneno` (`phoneno`),
  KEY `ix_rptsms_traceid` (`traceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_sms`
--

LOCK TABLES `rpt_sms` WRITE;
/*!40000 ALTER TABLE `rpt_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_sms_registration`
--

DROP TABLE IF EXISTS `rpt_sms_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_sms_registration` (
  `phoneno` varchar(25) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `dtregistered` datetime NOT NULL,
  PRIMARY KEY (`phoneno`,`refid`),
  KEY `ix_rptsmsreg_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_sms_registration`
--

LOCK TABLES `rpt_sms_registration` WRITE;
/*!40000 ALTER TABLE `rpt_sms_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_sms_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata`
--

DROP TABLE IF EXISTS `rpt_syncdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `dtfiled` datetime NOT NULL,
  `orgid` varchar(50) NOT NULL,
  `remote_orgid` varchar(50) DEFAULT NULL,
  `remote_orgcode` varchar(5) DEFAULT NULL,
  `remote_orgclass` varchar(25) DEFAULT NULL,
  `sender_objid` varchar(50) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_title` varchar(80) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`objid`),
  KEY `ix_orgid` (`orgid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata`
--

LOCK TABLES `rpt_syncdata` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_completed`
--

DROP TABLE IF EXISTS `rpt_syncdata_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_completed` (
  `objid` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_title` varchar(80) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `info` text,
  `dtfiled` datetime DEFAULT NULL,
  `orgid` varchar(50) DEFAULT NULL,
  `sender_objid` varchar(50) DEFAULT NULL,
  `remote_orgid` varchar(50) DEFAULT NULL,
  `remote_orgcode` varchar(25) DEFAULT NULL,
  `remote_orgclass` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_completed`
--

LOCK TABLES `rpt_syncdata_completed` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_downloaded`
--

DROP TABLE IF EXISTS `rpt_syncdata_downloaded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_downloaded` (
  `objid` varchar(255) NOT NULL,
  `etag` varchar(64) NOT NULL,
  `error` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_error` (`error`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_downloaded`
--

LOCK TABLES `rpt_syncdata_downloaded` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_downloaded` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_downloaded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_error`
--

DROP TABLE IF EXISTS `rpt_syncdata_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_error` (
  `objid` varchar(50) NOT NULL,
  `filekey` varchar(1000) NOT NULL,
  `error` text,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  `info` text,
  `parent` text,
  `remote_orgid` varchar(50) DEFAULT NULL,
  `remote_orgcode` varchar(5) DEFAULT NULL,
  `remote_orgclass` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_filekey` (`filekey`(255)),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_remote_orgcode` (`remote_orgcode`),
  KEY `ix_remote_orgid` (`remote_orgid`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_error`
--

LOCK TABLES `rpt_syncdata_error` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_fordownload`
--

DROP TABLE IF EXISTS `rpt_syncdata_fordownload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_fordownload` (
  `objid` varchar(255) NOT NULL,
  `etag` varchar(64) NOT NULL,
  `error` int(11) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_error` (`error`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_fordownload`
--

LOCK TABLES `rpt_syncdata_fordownload` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_fordownload` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_fordownload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_forsync`
--

DROP TABLE IF EXISTS `rpt_syncdata_forsync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_forsync` (
  `objid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `orgid` varchar(50) NOT NULL,
  `dtfiled` datetime NOT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `createdby_title` varchar(50) DEFAULT NULL,
  `remote_orgid` varchar(15) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`objid`),
  KEY `ix_orgid` (`orgid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_forsync`
--

LOCK TABLES `rpt_syncdata_forsync` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_forsync` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_forsync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_item`
--

DROP TABLE IF EXISTS `rpt_syncdata_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `idx` int(11) NOT NULL,
  `info` text,
  `error` text,
  `filekey` varchar(1200) DEFAULT NULL,
  `etag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_state` (`state`),
  CONSTRAINT `rpt_syncdata_item_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `rpt_syncdata` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_item`
--

LOCK TABLES `rpt_syncdata_item` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpt_syncdata_item_completed`
--

DROP TABLE IF EXISTS `rpt_syncdata_item_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpt_syncdata_item_completed` (
  `objid` varchar(255) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`objid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_remote_orgid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_syncdata_item_completed`
--

LOCK TABLES `rpt_syncdata_item_completed` WRITE;
/*!40000 ALTER TABLE `rpt_syncdata_item_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpt_syncdata_item_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptacknowledgement`
--

DROP TABLE IF EXISTS `rptacknowledgement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptacknowledgement` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` datetime DEFAULT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `txntype_objid` varchar(50) DEFAULT NULL,
  `releasedate` datetime DEFAULT NULL,
  `releasemode` varchar(50) DEFAULT NULL,
  `receivedby` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `pin` varchar(25) DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(150) DEFAULT NULL,
  `createdby_title` varchar(100) DEFAULT NULL,
  `dtchecked` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptacknowledgement_txnno` (`txnno`),
  KEY `ix_rptacknowledgement_createdby_name` (`createdby_name`),
  KEY `ix_rptacknowledgement_createdby_objid` (`createdby_objid`),
  KEY `ix_rptacknowledgement_pin` (`pin`),
  KEY `ix_rptacknowledgement_taxpayerid` (`taxpayer_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptacknowledgement`
--

LOCK TABLES `rptacknowledgement` WRITE;
/*!40000 ALTER TABLE `rptacknowledgement` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptacknowledgement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptacknowledgement_item`
--

DROP TABLE IF EXISTS `rptacknowledgement_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptacknowledgement_item` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `trackingno` varchar(25) DEFAULT NULL,
  `ref_objid` varchar(50) DEFAULT NULL,
  `newfaas_objid` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptacknowledgement_itemno` (`trackingno`),
  KEY `ix_rptacknowledgement_item_faasid` (`ref_objid`),
  KEY `ix_rptacknowledgement_item_newfaasid` (`newfaas_objid`),
  KEY `ix_rptacknowledgement_parentid` (`parent_objid`),
  CONSTRAINT `fk_rptacknowledgement_item_rptacknowledgement` FOREIGN KEY (`parent_objid`) REFERENCES `rptacknowledgement` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptacknowledgement_item`
--

LOCK TABLES `rptacknowledgement_item` WRITE;
/*!40000 ALTER TABLE `rptacknowledgement_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptacknowledgement_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptbill`
--

DROP TABLE IF EXISTS `rptbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptbill` (
  `objid` varchar(50) NOT NULL,
  `taxpayer_objid` varchar(50) NOT NULL,
  `taxpayer_name` longtext NOT NULL,
  `taxpayer_address` varchar(150) NOT NULL,
  `barcode` varchar(25) NOT NULL,
  `expirydate` date NOT NULL,
  `postedby` varchar(100) NOT NULL,
  `postedbytitle` varchar(50) DEFAULT NULL,
  `billtoyear` int(11) DEFAULT NULL,
  `billtoqtr` int(11) DEFAULT NULL,
  `dtposted` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptbill_barcode` (`barcode`),
  KEY `ix_expirydate` (`expirydate`),
  KEY `ix_rptbill_expirydate` (`expirydate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptbill`
--

LOCK TABLES `rptbill` WRITE;
/*!40000 ALTER TABLE `rptbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptbill_ledger`
--

DROP TABLE IF EXISTS `rptbill_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptbill_ledger` (
  `rptledgerid` varchar(50) NOT NULL DEFAULT '',
  `billid` varchar(50) NOT NULL DEFAULT '',
  `updateflag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`billid`,`rptledgerid`),
  KEY `ix_rptbill_ledgter_rptbillid` (`billid`),
  KEY `ix_rptbill_ledgter_rptledgerid` (`rptledgerid`),
  CONSTRAINT `FK_rptbillledger_rptbill` FOREIGN KEY (`billid`) REFERENCES `rptbill` (`objid`),
  CONSTRAINT `FK_rptbillledger_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptbill_ledger`
--

LOCK TABLES `rptbill_ledger` WRITE;
/*!40000 ALTER TABLE `rptbill_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptbill_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcertification`
--

DROP TABLE IF EXISTS `rptcertification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcertification` (
  `objid` varchar(50) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` datetime NOT NULL,
  `opener` varchar(50) NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `taxpayer_name` longtext NOT NULL,
  `taxpayer_address` varchar(255) DEFAULT NULL,
  `requestedby` longtext NOT NULL,
  `requestedbyaddress` varchar(255) NOT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `certifiedby` varchar(150) NOT NULL,
  `certifiedbytitle` varchar(50) NOT NULL,
  `byauthority` varchar(150) DEFAULT NULL,
  `byauthoritytitle` varchar(50) DEFAULT NULL,
  `official` int(11) NOT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `ordate` datetime DEFAULT NULL,
  `oramount` decimal(16,2) NOT NULL,
  `stampamount` decimal(16,2) NOT NULL,
  `createdbyid` varchar(50) DEFAULT NULL,
  `createdby` varchar(150) NOT NULL,
  `createdbytitle` varchar(50) NOT NULL,
  `office` varchar(50) DEFAULT NULL,
  `addlinfo` varchar(500) DEFAULT NULL,
  `attestedby` varchar(100) DEFAULT NULL,
  `attestedbytitle` varchar(100) DEFAULT NULL,
  `asofyear` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `qtr` int(11) DEFAULT NULL,
  `properties` text,
  `taskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptcertification_txnno` (`txnno`),
  KEY `FK_rptcertification_faas` (`faasid`),
  KEY `ix_rptcertification_office` (`office`),
  KEY `ix_rptcertification_office_txnno` (`office`,`txnno`),
  KEY `ix_rptcertification_taxpayerid` (`taxpayer_objid`),
  CONSTRAINT `FK_rptcertification_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcertification`
--

LOCK TABLES `rptcertification` WRITE;
/*!40000 ALTER TABLE `rptcertification` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcertification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcertification_online`
--

DROP TABLE IF EXISTS `rptcertification_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcertification_online` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `reftype` varchar(25) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `refdate` date NOT NULL,
  `orno` varchar(25) DEFAULT NULL,
  `ordate` date DEFAULT NULL,
  `oramount` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_orno` (`orno`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_state` (`state`),
  CONSTRAINT `fk_rptcertification_online_rptcertification` FOREIGN KEY (`objid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcertification_online`
--

LOCK TABLES `rptcertification_online` WRITE;
/*!40000 ALTER TABLE `rptcertification_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcertification_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcertification_task`
--

DROP TABLE IF EXISTS `rptcertification_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcertification_task` (
  `objid` varchar(50) NOT NULL DEFAULT '',
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` text,
  `returnedby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`),
  CONSTRAINT `rptcertification_task_ibfk_1` FOREIGN KEY (`refid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcertification_task`
--

LOCK TABLES `rptcertification_task` WRITE;
/*!40000 ALTER TABLE `rptcertification_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcertification_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcertificationitem`
--

DROP TABLE IF EXISTS `rptcertificationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcertificationitem` (
  `objid` int(11) NOT NULL AUTO_INCREMENT,
  `rptcertificationid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_rptcertificationitem_rptcertification` (`rptcertificationid`),
  KEY `ix_rptcertificationitem_refid` (`refid`),
  CONSTRAINT `FK_rptcertificationitem_rptcertification` FOREIGN KEY (`rptcertificationid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcertificationitem`
--

LOCK TABLES `rptcertificationitem` WRITE;
/*!40000 ALTER TABLE `rptcertificationitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcertificationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcompromise`
--

DROP TABLE IF EXISTS `rptcompromise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcompromise` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` date NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `lastyearpaid` int(11) NOT NULL,
  `lastqtrpaid` int(11) NOT NULL,
  `startyear` int(11) NOT NULL,
  `startqtr` int(11) NOT NULL,
  `endyear` int(11) NOT NULL,
  `endqtr` int(11) NOT NULL,
  `enddate` date NOT NULL,
  `cypaymentrequired` int(11) DEFAULT NULL,
  `cypaymentorno` varchar(15) DEFAULT NULL,
  `cypaymentordate` date DEFAULT NULL,
  `cypaymentoramount` decimal(10,2) DEFAULT NULL,
  `downpaymentrequired` int(11) NOT NULL,
  `downpaymentrate` decimal(10,2) NOT NULL,
  `downpayment` decimal(10,2) NOT NULL,
  `downpaymentorno` varchar(50) DEFAULT NULL,
  `downpaymentordate` date DEFAULT NULL,
  `term` int(11) NOT NULL,
  `numofinstallment` int(11) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtforinstallment` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `firstpartyname` varchar(100) NOT NULL,
  `firstpartytitle` varchar(50) NOT NULL,
  `firstpartyaddress` varchar(100) NOT NULL,
  `firstpartyctcno` varchar(15) NOT NULL,
  `firstpartyctcissued` varchar(100) NOT NULL,
  `firstpartyctcdate` date NOT NULL,
  `firstpartynationality` varchar(50) NOT NULL,
  `firstpartystatus` varchar(50) NOT NULL,
  `firstpartygender` varchar(10) NOT NULL,
  `secondpartyrepresentative` varchar(100) NOT NULL,
  `secondpartyname` varchar(100) NOT NULL,
  `secondpartyaddress` varchar(100) NOT NULL,
  `secondpartyctcno` varchar(15) NOT NULL,
  `secondpartyctcissued` varchar(100) NOT NULL,
  `secondpartyctcdate` date NOT NULL,
  `secondpartynationality` varchar(50) NOT NULL,
  `secondpartystatus` varchar(50) NOT NULL,
  `secondpartygender` varchar(10) NOT NULL,
  `dtsigned` date DEFAULT NULL,
  `notarizeddate` date DEFAULT NULL,
  `notarizedby` varchar(100) DEFAULT NULL,
  `notarizedbytitle` varchar(50) DEFAULT NULL,
  `signatories` longtext NOT NULL,
  `manualdiff` decimal(16,2) NOT NULL DEFAULT '0.00',
  `cypaymentreceiptid` varchar(50) DEFAULT NULL,
  `downpaymentreceiptid` varchar(50) DEFAULT NULL,
  `cutoffdate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptcompromise_faasid` (`faasid`),
  KEY `ix_rptcompromise_ledgerid` (`rptledgerid`),
  CONSTRAINT `fk_rptcompromise_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `fk_rptcompromise_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcompromise`
--

LOCK TABLES `rptcompromise` WRITE;
/*!40000 ALTER TABLE `rptcompromise` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcompromise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcompromise_credit`
--

DROP TABLE IF EXISTS `rptcompromise_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcompromise_credit` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `receiptid` varchar(50) DEFAULT NULL,
  `installmentid` varchar(50) DEFAULT NULL,
  `collector_name` varchar(100) NOT NULL,
  `collector_title` varchar(50) NOT NULL,
  `orno` varchar(15) DEFAULT NULL,
  `ordate` date NOT NULL,
  `oramount` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `paidby` varchar(150) NOT NULL,
  `paidbyaddress` varchar(100) NOT NULL,
  `partial` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptcompromise_credit_installmentid` (`installmentid`),
  KEY `ix_rptcompromise_credit_parentid` (`parentid`),
  KEY `ix_rptcompromise_credit_receiptid` (`receiptid`),
  CONSTRAINT `fk_rptcompromise_credit_cashreceipt` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`),
  CONSTRAINT `fk_rptcompromise_credit_rptcompromise` FOREIGN KEY (`parentid`) REFERENCES `rptcompromise` (`objid`),
  CONSTRAINT `fk_rptcompromise_credit_rptcompromise_installment` FOREIGN KEY (`installmentid`) REFERENCES `rptcompromise_installment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcompromise_credit`
--

LOCK TABLES `rptcompromise_credit` WRITE;
/*!40000 ALTER TABLE `rptcompromise_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcompromise_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcompromise_installment`
--

DROP TABLE IF EXISTS `rptcompromise_installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcompromise_installment` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `installmentno` int(11) NOT NULL,
  `duedate` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `fullypaid` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptcompromise_installment_rptcompromiseid` (`parentid`),
  CONSTRAINT `fk_rptcompromise_installment_rptcompromise` FOREIGN KEY (`parentid`) REFERENCES `rptcompromise` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcompromise_installment`
--

LOCK TABLES `rptcompromise_installment` WRITE;
/*!40000 ALTER TABLE `rptcompromise_installment` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcompromise_installment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptcompromise_item`
--

DROP TABLE IF EXISTS `rptcompromise_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptcompromise_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `rptledgerfaasid` varchar(50) NOT NULL,
  `revtype` varchar(50) NOT NULL,
  `revperiod` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `interest` decimal(16,2) NOT NULL,
  `interestpaid` decimal(16,2) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `taxdifference` int(11) DEFAULT NULL,
  `qtr` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptcompromise_item_rptcompromise` (`parentid`),
  KEY `ix_rptcompromise_item_rptledgerfaas` (`rptledgerfaasid`),
  CONSTRAINT `fk_rptcompromise_item_rptcompromise` FOREIGN KEY (`parentid`) REFERENCES `rptcompromise` (`objid`),
  CONSTRAINT `fk_rptcompromise_item_rptledgerfaas` FOREIGN KEY (`rptledgerfaasid`) REFERENCES `rptledgerfaas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptcompromise_item`
--

LOCK TABLES `rptcompromise_item` WRITE;
/*!40000 ALTER TABLE `rptcompromise_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptcompromise_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptexpiry`
--

DROP TABLE IF EXISTS `rptexpiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptexpiry` (
  `iyear` int(11) NOT NULL,
  `iqtr` int(11) NOT NULL,
  `expirytype` varchar(50) NOT NULL,
  `expirydate` datetime DEFAULT NULL,
  `reason` varchar(40) DEFAULT NULL,
  `imonth` int(11) DEFAULT NULL,
  `validuntil` date DEFAULT NULL,
  PRIMARY KEY (`expirytype`,`iqtr`,`iyear`),
  KEY `ix_rptexpiry_yrqtr` (`iyear`,`iqtr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptexpiry`
--

LOCK TABLES `rptexpiry` WRITE;
/*!40000 ALTER TABLE `rptexpiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptexpiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger`
--

DROP TABLE IF EXISTS `rptledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `nextbilldate` date DEFAULT NULL,
  `lastyearpaid` int(11) NOT NULL,
  `lastqtrpaid` int(11) NOT NULL,
  `firstqtrpaidontime` int(11) DEFAULT NULL,
  `qtrlypaymentavailed` int(11) DEFAULT NULL,
  `qtrlypaymentpaidontime` int(11) DEFAULT NULL,
  `lastitemyear` int(11) DEFAULT NULL,
  `lastreceiptid` varchar(50) DEFAULT NULL,
  `barangayid` varchar(50) DEFAULT NULL,
  `advancebill` int(11) DEFAULT '0',
  `lastbilledyear` int(11) DEFAULT '0',
  `lastbilledqtr` int(11) DEFAULT '0',
  `partialbasic` decimal(16,2) DEFAULT NULL,
  `partialbasicint` decimal(16,2) DEFAULT NULL,
  `partialbasicdisc` decimal(16,2) DEFAULT NULL,
  `partialsef` decimal(16,2) DEFAULT NULL,
  `partialsefint` decimal(16,2) DEFAULT NULL,
  `partialsefdisc` decimal(16,2) DEFAULT NULL,
  `partialledyear` int(11) DEFAULT '0',
  `partialledqtr` int(11) DEFAULT '0',
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `fullpin` varchar(35) DEFAULT NULL,
  `tdno` varchar(50) DEFAULT NULL,
  `cadastrallotno` longtext,
  `rputype` varchar(15) DEFAULT NULL,
  `txntype_objid` varchar(50) DEFAULT NULL,
  `classcode` varchar(15) DEFAULT NULL,
  `totalav` decimal(16,2) DEFAULT NULL,
  `totalmv` decimal(16,2) DEFAULT NULL,
  `totalareaha` decimal(16,6) DEFAULT NULL,
  `taxable` int(11) DEFAULT NULL,
  `owner_name` varchar(1000) NOT NULL,
  `prevtdno` varchar(800) DEFAULT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `titleno` varchar(50) DEFAULT NULL,
  `undercompromise` int(11) DEFAULT NULL,
  `updateflag` varchar(50) DEFAULT NULL,
  `forcerecalcbill` int(11) DEFAULT NULL,
  `administrator_name` varchar(150) DEFAULT NULL,
  `blockno` varchar(50) DEFAULT NULL,
  `lguid` varchar(50) DEFAULT NULL,
  `beneficiary_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_rptledger_barangay` (`barangayid`),
  KEY `FK_rptledger_faas` (`faasid`),
  KEY `ix_rptledger_administartorname` (`administrator_name`),
  KEY `ix_rptledger_blockno` (`blockno`),
  KEY `ix_rptledger_cadastrallotno` (`cadastrallotno`(255)),
  KEY `ix_rptledger_faasid` (`faasid`),
  KEY `ix_rptledger_fullpin` (`fullpin`),
  KEY `ix_rptledger_owner_name` (`owner_name`(255)),
  KEY `ix_rptledger_prevtdno` (`prevtdno`(255)),
  KEY `ix_rptledger_state` (`state`),
  KEY `ix_rptledger_state_barangay` (`state`,`barangayid`),
  KEY `ix_rptledger_state_faasid` (`state`,`faasid`),
  KEY `ix_rptledger_state_lastyearpaid` (`state`,`lastyearpaid`),
  KEY `ix_rptledger_tdno` (`tdno`),
  KEY `ix_rptledgerlastyearpaidqtr` (`lastyearpaid`,`lastqtrpaid`),
  CONSTRAINT `FK_rptledger_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`),
  CONSTRAINT `FK_rptledger_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger`
--

LOCK TABLES `rptledger` WRITE;
/*!40000 ALTER TABLE `rptledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_avdifference`
--

DROP TABLE IF EXISTS `rptledger_avdifference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_avdifference` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `rptledgerfaas_objid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `av` decimal(16,2) NOT NULL,
  `paid` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptledger` (`parent_objid`),
  KEY `fk_rptledgerfaas` (`rptledgerfaas_objid`),
  CONSTRAINT `fk_rptledger` FOREIGN KEY (`parent_objid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `fk_rptledgerfaas` FOREIGN KEY (`rptledgerfaas_objid`) REFERENCES `rptledgerfaas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_avdifference`
--

LOCK TABLES `rptledger_avdifference` WRITE;
/*!40000 ALTER TABLE `rptledger_avdifference` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_avdifference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_credit`
--

DROP TABLE IF EXISTS `rptledger_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_credit` (
  `objid` varchar(100) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `refdate` date NOT NULL,
  `payorid` varchar(50) DEFAULT NULL,
  `paidby_name` longtext NOT NULL,
  `paidby_address` varchar(150) NOT NULL,
  `collector` varchar(80) NOT NULL,
  `postedby` varchar(100) NOT NULL,
  `postedbytitle` varchar(50) NOT NULL,
  `dtposted` datetime NOT NULL,
  `fromyear` int(11) NOT NULL,
  `fromqtr` int(11) NOT NULL,
  `toyear` int(11) NOT NULL,
  `toqtr` int(11) NOT NULL,
  `basic` decimal(12,2) NOT NULL,
  `basicint` decimal(12,2) NOT NULL,
  `basicdisc` decimal(12,2) NOT NULL,
  `basicidle` decimal(12,2) NOT NULL,
  `sef` decimal(12,2) NOT NULL,
  `sefint` decimal(12,2) NOT NULL,
  `sefdisc` decimal(12,2) NOT NULL,
  `firecode` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `collectingagency` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_rptledgercredit_rptledger` (`rptledgerid`),
  KEY `ix_rptreceipt_payorid` (`payorid`),
  KEY `ix_rptreceipt_receiptno` (`refno`),
  CONSTRAINT `rptledger_credit_ibfk_1` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_credit`
--

LOCK TABLES `rptledger_credit` WRITE;
/*!40000 ALTER TABLE `rptledger_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_forprocess`
--

DROP TABLE IF EXISTS `rptledger_forprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_forprocess` (
  `objid` varchar(255) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_forprocess`
--

LOCK TABLES `rptledger_forprocess` WRITE;
/*!40000 ALTER TABLE `rptledger_forprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_forprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_item`
--

DROP TABLE IF EXISTS `rptledger_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `rptledgerfaasid` varchar(50) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `basicav` decimal(16,2) NOT NULL,
  `sefav` decimal(16,2) NOT NULL,
  `av` decimal(16,2) NOT NULL,
  `revtype` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `priority` int(11) NOT NULL,
  `taxdifference` int(11) NOT NULL,
  `system` int(11) NOT NULL,
  `fromqtr` int(11) DEFAULT NULL,
  `toqtr` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptledger_item_rptledger` (`parentid`),
  CONSTRAINT `fk_rptledger_item_rptledger` FOREIGN KEY (`parentid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_item`
--

LOCK TABLES `rptledger_item` WRITE;
/*!40000 ALTER TABLE `rptledger_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_redflag`
--

DROP TABLE IF EXISTS `rptledger_redflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_redflag` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `caseno` varchar(25) DEFAULT NULL,
  `dtfiled` datetime DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `finding` text,
  `remarks` text,
  `blockaction` varchar(25) DEFAULT NULL,
  `filedby_objid` varchar(50) DEFAULT NULL,
  `filedby_name` varchar(255) DEFAULT NULL,
  `filedby_title` varchar(50) DEFAULT NULL,
  `resolvedby_objid` varchar(50) DEFAULT NULL,
  `resolvedby_name` varchar(255) DEFAULT NULL,
  `resolvedby_title` varchar(50) DEFAULT NULL,
  `dtresolved` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_caseno` (`caseno`),
  KEY `ix_filedby_objid` (`filedby_objid`),
  KEY `ix_parent_objid` (`parent_objid`),
  KEY `ix_resolvedby_objid` (`resolvedby_objid`),
  KEY `ix_state` (`state`),
  KEY `ix_type` (`type`),
  CONSTRAINT `fk_rptledger_redflag_filedby` FOREIGN KEY (`filedby_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `fk_rptledger_redflag_resolvedby` FOREIGN KEY (`resolvedby_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `fk_rptledger_redflag_rptledger` FOREIGN KEY (`parent_objid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_redflag`
--

LOCK TABLES `rptledger_redflag` WRITE;
/*!40000 ALTER TABLE `rptledger_redflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_redflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_restriction`
--

DROP TABLE IF EXISTS `rptledger_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_restriction` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `restrictionid` varchar(50) NOT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`objid`),
  KEY `ix_autoinc_oid` (`oid`),
  KEY `FK_rptledger_restriction_rptledger` (`parentid`),
  CONSTRAINT `FK_rptledger_restriction_rptledger` FOREIGN KEY (`parentid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_restriction`
--

LOCK TABLES `rptledger_restriction` WRITE;
/*!40000 ALTER TABLE `rptledger_restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_subledger`
--

DROP TABLE IF EXISTS `rptledger_subledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_subledger` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `subacctno` varchar(10) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_parentid_subacctno` (`parent_objid`,`subacctno`),
  CONSTRAINT `FK_rptledger_subledger_rptldger` FOREIGN KEY (`parent_objid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_subledger`
--

LOCK TABLES `rptledger_subledger` WRITE;
/*!40000 ALTER TABLE `rptledger_subledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_subledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledger_tag`
--

DROP TABLE IF EXISTS `rptledger_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledger_tag` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptledger_tag` (`parent_objid`,`tag`),
  KEY `FK_rptledgertag_rptledger` (`parent_objid`),
  CONSTRAINT `FK_rptledgertag_rptledger` FOREIGN KEY (`parent_objid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledger_tag`
--

LOCK TABLES `rptledger_tag` WRITE;
/*!40000 ALTER TABLE `rptledger_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledger_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledgerbill`
--

DROP TABLE IF EXISTS `rptledgerbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledgerbill` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `ledgerfaasid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `av` decimal(16,2) NOT NULL,
  `type` varchar(25) NOT NULL,
  `revenueitemid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `interest` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL,
  `revtype` varchar(25) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledgerbill`
--

LOCK TABLES `rptledgerbill` WRITE;
/*!40000 ALTER TABLE `rptledgerbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledgerbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledgerbillitem`
--

DROP TABLE IF EXISTS `rptledgerbillitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledgerbillitem` (
  `objid` varchar(75) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `rptledgerfaasid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  `fromqtr` int(11) NOT NULL,
  `toqtr` int(11) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `qtrlyav` decimal(16,2) NOT NULL,
  `basic` decimal(16,2) NOT NULL,
  `basicpaid` decimal(16,2) NOT NULL,
  `basicint` decimal(16,2) NOT NULL,
  `basicintpaid` decimal(16,2) NOT NULL,
  `basicintpartial` decimal(10,2) NOT NULL,
  `basicdisc` decimal(16,2) NOT NULL,
  `basicdisctaken` decimal(16,2) NOT NULL,
  `basicamnesty` decimal(16,2) NOT NULL,
  `basicintamnesty` decimal(16,2) NOT NULL,
  `basiccredit` decimal(16,2) NOT NULL,
  `sef` decimal(16,2) NOT NULL,
  `sefpaid` decimal(16,2) NOT NULL,
  `sefint` decimal(16,2) NOT NULL,
  `sefintpaid` decimal(16,2) NOT NULL,
  `sefintpartial` decimal(10,2) NOT NULL,
  `sefdisc` decimal(16,2) NOT NULL,
  `sefdisctaken` decimal(16,2) NOT NULL,
  `sefamnesty` decimal(16,2) NOT NULL,
  `sefintamnesty` decimal(16,2) NOT NULL,
  `sefcredit` decimal(16,2) NOT NULL,
  `firecode` decimal(10,2) DEFAULT NULL,
  `firecodepaid` decimal(10,2) DEFAULT NULL,
  `revtype` varchar(15) DEFAULT NULL,
  `amnestyinfo` varchar(50) DEFAULT NULL,
  `forpayment` int(11) NOT NULL,
  `partial` int(11) DEFAULT NULL,
  `partialapplied` int(11) DEFAULT NULL,
  `partialbasic` decimal(10,2) DEFAULT NULL,
  `partialbasicint` decimal(10,2) DEFAULT NULL,
  `partialbasicdisc` decimal(10,2) DEFAULT NULL,
  `partialsef` decimal(10,2) DEFAULT NULL,
  `partialsefint` decimal(10,2) DEFAULT NULL,
  `partialsefdisc` decimal(10,2) DEFAULT NULL,
  `basicacctid` varchar(50) DEFAULT NULL,
  `basicintacctid` varchar(50) DEFAULT NULL,
  `sefacctid` varchar(50) DEFAULT NULL,
  `sefintacctid` varchar(50) DEFAULT NULL,
  `firecodeacctid` varchar(50) DEFAULT NULL,
  `lgushare` decimal(16,2) NOT NULL DEFAULT '0.00',
  `lguintshare` decimal(16,2) NOT NULL DEFAULT '0.00',
  `brgyshare` decimal(16,2) NOT NULL DEFAULT '0.00',
  `brgyintshare` decimal(16,2) NOT NULL DEFAULT '0.00',
  `brgyshareacctid` varchar(50) DEFAULT NULL,
  `brgyintshareacctid` varchar(50) DEFAULT NULL,
  `provshare` decimal(16,2) NOT NULL DEFAULT '0.00',
  `provintshare` decimal(16,2) NOT NULL DEFAULT '0.00',
  `provshareacctid` varchar(50) DEFAULT NULL,
  `provintshareacctid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptledgerbillitem_ledgeridyearqtr` (`rptledgerid`,`year`,`qtr`),
  KEY `ix_rptledgerbillitem_rptledgerfaasid` (`rptledgerfaasid`),
  KEY `ix_rptledgerbillitem_rptledgerid` (`rptledgerid`),
  CONSTRAINT `FK_rptledgerbillitem_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `FK_rptledgerbillitem_rptledgerfaas` FOREIGN KEY (`rptledgerfaasid`) REFERENCES `rptledgerfaas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledgerbillitem`
--

LOCK TABLES `rptledgerbillitem` WRITE;
/*!40000 ALTER TABLE `rptledgerbillitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledgerbillitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptledgerfaas`
--

DROP TABLE IF EXISTS `rptledgerfaas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptledgerfaas` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `tdno` varchar(50) DEFAULT NULL,
  `txntype_objid` varchar(10) DEFAULT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `actualuse_objid` varchar(50) DEFAULT NULL,
  `taxable` int(11) NOT NULL,
  `backtax` int(11) NOT NULL,
  `fromyear` int(11) NOT NULL,
  `fromqtr` int(11) NOT NULL,
  `toyear` int(11) NOT NULL,
  `toqtr` int(11) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `systemcreated` int(11) NOT NULL,
  `reclassed` int(11) DEFAULT NULL,
  `idleland` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_rptledgerfaas_faas` (`faasid`),
  KEY `FK_rptledgerhistory_rptledger` (`rptledgerid`),
  KEY `ix_rptledgerfaas_rptledgerid_faasid` (`rptledgerid`,`faasid`),
  KEY `ix_rptledgerfaas_tdno` (`tdno`),
  KEY `ix_rptledgerhistory_ledgerid_toyear` (`rptledgerid`,`toyear`),
  CONSTRAINT `FK_rptledgerfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_rptledgerfaas_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptledgerfaas`
--

LOCK TABLES `rptledgerfaas` WRITE;
/*!40000 ALTER TABLE `rptledgerfaas` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptledgerfaas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptparameter`
--

DROP TABLE IF EXISTS `rptparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptparameter` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `description` longtext,
  `paramtype` varchar(20) NOT NULL,
  `minvalue` decimal(10,2) NOT NULL,
  `maxvalue` decimal(10,2) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rptparameter_name` (`name`),
  KEY `ix_rptparameter_caption` (`caption`),
  KEY `ix_rptparameter_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptparameter`
--

LOCK TABLES `rptparameter` WRITE;
/*!40000 ALTER TABLE `rptparameter` DISABLE KEYS */;
INSERT INTO `rptparameter` VALUES ('AREA_SQM','APPROVED','AREA_SQM','AREA IN SQM','AREA IN SQUARE METER','decimal',0.00,0.00),('DISTANCE_TO_AWR','APPROVED','DISTANCE_TO_AWR','DISTANCE TO AWR','','decimal',0.00,0.00),('DISTANCE_TO_LTC','APPROVED','DISTANCE_TO_LTC','DISTANCE TO LTC','','decimal',0.00,0.00),('MULTI_STOREY_RATE','APPROVED','MULTI_STOREY_RATE','MULTI-STOREY RATE',NULL,'decimal',0.00,0.00),('NO_OF_SETS','APPROVED','NO_OF_SETS','NO. OF SETS',NULL,'integer',0.00,0.00),('P65ce3399:1674f1aed8d:-1d8e','APPROVED','UV_160_210','UNIT VALUE (160-210)',NULL,'range_decimal',160.00,210.00),('RP-e1e86ac:147336bc626:-7fc1','APPROVED','LINEAR_METER','LINEAR METER','LINEAR OF METER','decimal',0.00,0.00),('RP1202d5ca:15141a9f463:-7b17','APPROVED','VALUE_ADJUSTMENT','VALUE ADJUSTMENT',NULL,'decimal',0.00,0.00),('RP1cb5fe2e:14cdb1a6034:-78d9','APPROVED','TOTAL_ADDITIONAL','TOTAL_ADDITIONAL',NULL,'decimal',0.00,0.00),('RP278b7a42:14e5756a3b6:-20bf','APPROVED','RATE_30_40','RATE (30% - 40%)',NULL,'range_decimal',30.00,40.00),('RP3153bf8b:1473788097f:-4fae','APPROVED','NO_UNITS','NO. OF UNITS',NULL,'integer',0.00,0.00),('RP3153bf8b:1473788097f:-5e15','APPROVED','NO_OF_UNITS','NUMBER OF UNITS',NULL,'decimal',0.00,0.00),('RP4d9894b6:14aca9c2cee:-1263','APPROVED','UV_3500_3800','UNIT VALUE (3500-3800)',NULL,'range_decimal',3500.00,3800.00),('RP65bd4b24:147eee7380d:-78b9','APPROVED','DISTANCE_KM','DISTANCE IN KM',NULL,'decimal',0.00,0.00),('RP65bd4b24:147eee7380d:1fdb','APPROVED','UV_800_1600','UNIT VALUE (800-1600)',NULL,'range_decimal',800.00,1600.00),('RP65bd4b24:147eee7380d:1fff','APPROVED','UV_250_300','UNIT VALUE (250-300)',NULL,'range_decimal',250.00,300.00),('RP65bd4b24:147eee7380d:2277','APPROVED','UV_1000_1300','UNIT VALUE (1000-1300)',NULL,'range_decimal',1000.00,1300.00),('RP65bd4b24:147eee7380d:2427','APPROVED','UV_500_800','UNIT VALUE (500-800)',NULL,'range_decimal',500.00,800.00),('RP65bd4b24:147eee7380d:243f','APPROVED','UV_450_750','UNIT VALUE (450-750)',NULL,'range_decimal',450.00,750.00),('RP65bd4b24:147eee7380d:2457','APPROVED','UV_400_600','UNIT VALUE (400-600)',NULL,'range_decimal',400.00,600.00),('RP65bd4b24:147eee7380d:2b29','APPROVED','UV_700_1000','UNIT VALUE (700-1000)',NULL,'range_decimal',700.00,1000.00),('RP65bd4b24:147eee7380d:2b3a','APPROVED','UV_2400_3000','UNIT VALUE (2400-3000)',NULL,'range_decimal',2400.00,3000.00),('RP65bd4b24:147eee7380d:2d97','APPROVED','UV_300_500','UNIT VALUE (300-500)',NULL,'range_decimal',300.00,500.00),('RP65bd4b24:147eee7380d:2daf','APPROVED','UV_300_400','UNIT VALUE (300-400)',NULL,'range_decimal',300.00,400.00),('RP65bd4b24:147eee7380d:3285','APPROVED','UV_50_100','UNIT VALUE (50-100)',NULL,'range_decimal',50.00,100.00),('RP65bd4b24:147eee7380d:3d1c','APPROVED','UV_400_450','UNIT VALUE (400-450)',NULL,'range_decimal',400.00,450.00),('RP65bd4b24:147eee7380d:3d34','APPROVED','UV_350_400','UNIT VALUE (350-400)',NULL,'range_decimal',350.00,400.00),('RP65bd4b24:147eee7380d:3d4c','APPROVED','UV_250_350','UNIT VALUE (250-350)',NULL,'range_decimal',250.00,350.00),('RP65bd4b24:147eee7380d:408c','APPROVED','UV_1000_1200','UNIT VALUE (1000-1200)',NULL,'range_decimal',1000.00,1200.00),('RP65bd4b24:147eee7380d:40a4','APPROVED','UV_900_1000','UNIT VALUE (900-1000)',NULL,'range_decimal',900.00,1000.00),('RP65bd4b24:147eee7380d:492e','APPROVED','HEIGHTS_METER','HEIGHTS IN METER',NULL,'decimal',0.00,0.00),('RP65bd4b24:147eee7380d:4e52','APPROVED','UV_5000_7500','UNIT VALUE (5000-7500)',NULL,'range_decimal',5000.00,7500.00),('RP65bd4b24:147eee7380d:5013','APPROVED','TOTAL_AREA','TOTAL AREA',NULL,'decimal',0.00,0.00),('RP65bd4b24:147eee7380d:52b0','APPROVED','PERCENTAGE_15_20','PERCENTAGE (15-20)',NULL,'range_decimal',0.00,0.00),('RP65bd4b24:147eee7380d:587d','APPROVED','UV_8000_9500','UNIT VALUE (8000-9500)',NULL,'range_decimal',8000.00,9500.00),('RP65bd4b24:147eee7380d:588e','APPROVED','UV_3500_6000','UNIT VALUE (3500-6000)',NULL,'range_decimal',3500.00,6000.00),('RP65bd4b24:147eee7380d:589f','APPROVED','UV_3500_4200','UNIT VALUE (3500-4200)',NULL,'range_decimal',3500.00,4200.00),('RP65bd4b24:147eee7380d:58c1','APPROVED','UV_2000_2300','UNIT VALUE (2000-2300)',NULL,'range_decimal',2000.00,2300.00),('RP65bd4b24:147eee7380d:6558','APPROVED','VOLUME_CU_M','VOLUME IN CU.M.',NULL,'decimal',0.00,0.00),('RP65bd4b24:147eee7380d:6658','APPROVED','UV_4000_4200','UNIT VALUE (4000-4200)',NULL,'range_decimal',4000.00,4200.00),('RP65bd4b24:147eee7380d:6670','APPROVED','UV_1000_1800','UNIT VALUE (1000-1800)',NULL,'range_decimal',1000.00,1800.00),('RP65bd4b24:147eee7380d:6c07','APPROVED','UV_500_700','UNIT VALUE (500-700)',NULL,'range_decimal',500.00,700.00),('RP65bd4b24:147eee7380d:6e89','APPROVED','NO_OF_PIECES','NUMBER OF PIECES',NULL,'integer',0.00,0.00),('RP65bd4b24:147eee7380d:6ea1','APPROVED','UV_25_50','UNIT VALUE (25-50)',NULL,'range_decimal',25.00,50.00),('RP65bd4b24:147eee7380d:71ab','APPROVED','UV_3300_3900','UNIT VALUE (3300-3900)',NULL,'range_decimal',3300.00,3900.00),('RP65bd4b24:147eee7380d:71c3','APPROVED','UV_1000_1100','UNIT VALUE (1000-1100)',NULL,'range_decimal',1000.00,1100.00),('RP65bd4b24:147eee7380d:71db','APPROVED','UV_3800_6000','UNIT VALUE (3800-6000)',NULL,'range_decimal',3800.00,6000.00),('RP65bd4b24:147eee7380d:727a','APPROVED','UV_900_1300','UNIT VALUE (900-1300)',NULL,'range_decimal',900.00,1300.00),('RP65bd4b24:147eee7380d:7292','APPROVED','UV_550_950','UNIT VALUE (550-950)',NULL,'range_decimal',550.00,950.00),('RP65bd4b24:147eee7380d:72aa','APPROVED','UV_350_700','UNIT VALUE (350-700)',NULL,'range_decimal',350.00,700.00),('RP65bd4b24:147eee7380d:72c2','APPROVED','UV_4500_8000','UNIT VALUE (4500-8000)',NULL,'range_decimal',4500.00,8000.00),('RP65bd4b24:147eee7380d:72da','APPROVED','UV_4000_5000','UNIT VALUE (4000-5000)',NULL,'range_decimal',4000.00,5000.00),('RP65bd4b24:147f0d26ed9:-7757','APPROVED','AREA_CU_M','AREA IN CU.M.',NULL,'decimal',0.00,0.00),('RP6ea552b8:14d6ea523dd:-47ad','APPROVED','DEPRECIATION_RATE','DEPRECIATION RATE','DEPRECIATION_RATE','decimal',0.00,0.00),('RP6ea552b8:14d6ea523dd:-5da8','APPROVED','PAINTED_AREA','PAINTED AREA (SQM)',NULL,'decimal',0.00,0.00),('TOTAL_ADVANCE','APPROVED','TOTAL_ADVANCE','TOTAL ADVANCE',NULL,'decimal',0.00,0.00),('TOTAL_AV','APPROVED','TOTAL_AV','TOTAL AV',NULL,'decimal',0.00,0.00),('TOTAL_BMV','APPROVED','TOTAL_BMV','TOTAL BMV',NULL,'decimal',0.00,0.00),('TOTAL_CURRENT','APPROVED','TOTAL_CURRENT','TOTAL CURRENT',NULL,'decimal',0.00,0.00),('TOTAL_MV','APPROVED','TOTAL_MV','TOTAL MV','','decimal',0.00,0.00),('TOTAL_PREVIOUS','APPROVED','TOTAL_PREVIOUS','TOTAL PREVIOUS',NULL,'decimal',0.00,0.00),('TOTAL_PRIOR','APPROVED','TOTAL_PRIOR','TOTAL PRIOR','','decimal',0.00,0.00),('TOTAL_VALUE','APPROVED','TOTAL_VALUE','TOTAL VALUE','','decimal',0.00,0.00);
/*!40000 ALTER TABLE `rptparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptpayment`
--

DROP TABLE IF EXISTS `rptpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptpayment` (
  `objid` varchar(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `receiptid` varchar(50) DEFAULT NULL,
  `receiptno` varchar(50) NOT NULL,
  `receiptdate` date NOT NULL,
  `paidby_name` longtext NOT NULL,
  `paidby_address` varchar(150) NOT NULL,
  `postedby` varchar(100) NOT NULL,
  `postedbytitle` varchar(50) NOT NULL,
  `dtposted` datetime NOT NULL,
  `fromyear` int(11) NOT NULL,
  `fromqtr` int(11) NOT NULL,
  `toyear` int(11) NOT NULL,
  `toqtr` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `collectingagency` varchar(50) DEFAULT NULL,
  `voided` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptpayment_cashreceipt` (`receiptid`),
  KEY `ix_receiptno` (`receiptno`),
  KEY `ix_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptpayment`
--

LOCK TABLES `rptpayment` WRITE;
/*!40000 ALTER TABLE `rptpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptpayment_item`
--

DROP TABLE IF EXISTS `rptpayment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptpayment_item` (
  `objid` varchar(100) NOT NULL,
  `parentid` varchar(100) DEFAULT NULL,
  `rptledgerfaasid` varchar(50) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) DEFAULT NULL,
  `revtype` varchar(50) NOT NULL,
  `revperiod` varchar(25) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL,
  `interest` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL,
  `partialled` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptpayment_item_parentid` (`parentid`),
  KEY `fk_rptpayment_item_rptledgerfaasid` (`rptledgerfaasid`),
  KEY `ix_revperiod` (`revperiod`),
  KEY `ix_revtype` (`revtype`),
  KEY `ix_year` (`year`),
  CONSTRAINT `rptpayment_item_rptledgerfaas` FOREIGN KEY (`rptledgerfaasid`) REFERENCES `rptledgerfaas` (`objid`),
  CONSTRAINT `rptpayment_item_rptpayment` FOREIGN KEY (`parentid`) REFERENCES `rptpayment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptpayment_item`
--

LOCK TABLES `rptpayment_item` WRITE;
/*!40000 ALTER TABLE `rptpayment_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptpayment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptpayment_share`
--

DROP TABLE IF EXISTS `rptpayment_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptpayment_share` (
  `objid` varchar(100) NOT NULL,
  `parentid` varchar(100) DEFAULT NULL,
  `revperiod` varchar(25) NOT NULL,
  `revtype` varchar(25) NOT NULL,
  `sharetype` varchar(25) NOT NULL,
  `item_objid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,4) NOT NULL,
  `discount` decimal(16,4) DEFAULT NULL,
  `iscommon` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_rptpayment_share_item_objid` (`item_objid`),
  KEY `fk_rptpayment_share_parentid` (`parentid`),
  KEY `ix_revperiod` (`revperiod`),
  KEY `ix_revtype` (`revtype`),
  KEY `ix_year` (`year`),
  CONSTRAINT `rptpayment_share_itemaccount` FOREIGN KEY (`item_objid`) REFERENCES `itemaccount` (`objid`),
  CONSTRAINT `rptpayment_share_rptpayment` FOREIGN KEY (`parentid`) REFERENCES `rptpayment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptpayment_share`
--

LOCK TABLES `rptpayment_share` WRITE;
/*!40000 ALTER TABLE `rptpayment_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptpayment_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptreceipt_capture`
--

DROP TABLE IF EXISTS `rptreceipt_capture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptreceipt_capture` (
  `objid` varchar(100) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `receiptno` varchar(25) NOT NULL,
  `receiptdate` date NOT NULL,
  `payorid` varchar(50) DEFAULT NULL,
  `paidby_name` longtext NOT NULL,
  `paidby_address` varchar(150) NOT NULL,
  `collector` varchar(100) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `postedby` varchar(100) NOT NULL,
  `postedbytitle` varchar(50) NOT NULL,
  `dtposted` datetime NOT NULL,
  `paidby` varchar(50) NOT NULL,
  `fromyear` int(11) NOT NULL,
  `fromqtr` int(11) NOT NULL,
  `toyear` int(11) NOT NULL,
  `toqtr` int(11) NOT NULL,
  `period` varchar(50) NOT NULL,
  `basic` decimal(12,2) NOT NULL,
  `basicint` decimal(12,2) NOT NULL,
  `basicdisc` decimal(12,2) NOT NULL,
  `sef` decimal(12,2) NOT NULL,
  `sefint` decimal(12,2) NOT NULL,
  `sefdisc` decimal(12,2) NOT NULL,
  `firecode` decimal(12,2) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptreceipt_capture_paidby` (`paidby`),
  KEY `ix_rptreceipt_payorid` (`payorid`),
  KEY `ix_rptreceipt_receiptno` (`receiptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptreceipt_capture`
--

LOCK TABLES `rptreceipt_capture` WRITE;
/*!40000 ALTER TABLE `rptreceipt_capture` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptreceipt_capture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttask`
--

DROP TABLE IF EXISTS `rpttask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttask` (
  `taskid` varchar(50) NOT NULL,
  `objid` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `filetype` varchar(50) NOT NULL,
  `msg` varchar(100) DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) NOT NULL,
  `createdby_name` varchar(150) NOT NULL,
  `createdby_title` varchar(50) DEFAULT NULL,
  `assignedto_objid` varchar(50) DEFAULT NULL,
  `assignedto_name` varchar(150) DEFAULT NULL,
  `assignedto_title` varchar(50) DEFAULT NULL,
  `workflowid` varchar(50) DEFAULT NULL,
  `signatory` varchar(50) DEFAULT NULL,
  `docname` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`taskid`),
  KEY `ix_rpttask_assignedto_enddate` (`assignedto_objid`,`enddate`),
  KEY `ix_rpttask_assignedto_name` (`assignedto_name`),
  KEY `ix_rpttask_assignedto_objid` (`assignedto_objid`),
  KEY `ix_rpttask_createdby_name` (`createdby_name`),
  KEY `ix_rpttask_createdby_objid` (`createdby_objid`),
  KEY `ix_rpttask_enddate` (`enddate`),
  KEY `ix_rpttask_objid` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttask`
--

LOCK TABLES `rpttask` WRITE;
/*!40000 ALTER TABLE `rpttask` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttaxclearance`
--

DROP TABLE IF EXISTS `rpttaxclearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttaxclearance` (
  `objid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  `reporttype` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  CONSTRAINT `FK_rpttaxclearance_rptcertification` FOREIGN KEY (`objid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttaxclearance`
--

LOCK TABLES `rpttaxclearance` WRITE;
/*!40000 ALTER TABLE `rpttaxclearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttaxclearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttaxcredit`
--

DROP TABLE IF EXISTS `rpttaxcredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttaxcredit` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `reftype` varchar(25) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refno` varchar(25) NOT NULL,
  `refdate` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtapplied` decimal(16,2) NOT NULL,
  `rptledger_objid` varchar(50) NOT NULL,
  `srcledger_objid` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `approvedby_objid` varchar(50) DEFAULT NULL,
  `approvedby_name` varchar(150) DEFAULT NULL,
  `approvedby_title` varchar(75) DEFAULT NULL,
  `info` text,
  `discapplied` decimal(16,2) DEFAULT '0.00',
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_txnno` (`txnno`),
  KEY `fk_rpttaxcredit_sys_user` (`approvedby_objid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_reftype` (`reftype`),
  KEY `ix_rptledger_objid` (`rptledger_objid`),
  KEY `ix_srcledger_objid` (`srcledger_objid`),
  KEY `ix_state` (`state`),
  KEY `ix_type` (`type`),
  CONSTRAINT `fk_rpttaxcredit_rptledger` FOREIGN KEY (`rptledger_objid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `fk_rpttaxcredit_srcledger` FOREIGN KEY (`srcledger_objid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `fk_rpttaxcredit_sys_user` FOREIGN KEY (`approvedby_objid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttaxcredit`
--

LOCK TABLES `rpttaxcredit` WRITE;
/*!40000 ALTER TABLE `rpttaxcredit` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttaxcredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttaxincentive`
--

DROP TABLE IF EXISTS `rpttaxincentive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttaxincentive` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(25) DEFAULT NULL,
  `txndate` date DEFAULT NULL,
  `taxpayer_objid` varchar(50) NOT NULL,
  `taxpayer_name` longtext NOT NULL,
  `taxpayer_address` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `createdby_objid` varchar(50) NOT NULL,
  `createdby_name` varchar(100) NOT NULL,
  `createdby_title` varchar(50) NOT NULL,
  `createdby_date` datetime NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rpttaxincentive_name` (`name`),
  KEY `ix_rpttaxincentive_state` (`state`),
  KEY `ix_rpttaxincentive_taxpayerid` (`taxpayer_objid`),
  KEY `ix_rpttaxincentive_txnno` (`txnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttaxincentive`
--

LOCK TABLES `rpttaxincentive` WRITE;
/*!40000 ALTER TABLE `rpttaxincentive` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttaxincentive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttaxincentive_item`
--

DROP TABLE IF EXISTS `rpttaxincentive_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttaxincentive_item` (
  `objid` varchar(50) NOT NULL,
  `rpttaxincentiveid` varchar(50) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `fromyear` int(11) NOT NULL,
  `toyear` int(11) NOT NULL,
  `basicrate` int(11) NOT NULL,
  `sefrate` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rpttaxincentiveitem_rptledgerid` (`rptledgerid`),
  KEY `ix_rpttaxincentiveitem_rpttaxincentiveid` (`rpttaxincentiveid`),
  CONSTRAINT `FK_rpttaxincentiveitem_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `FK_rpttaxincentiveitem_rpttaxincentive` FOREIGN KEY (`rpttaxincentiveid`) REFERENCES `rpttaxincentive` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttaxincentive_item`
--

LOCK TABLES `rpttaxincentive_item` WRITE;
/*!40000 ALTER TABLE `rpttaxincentive_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttaxincentive_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttracking`
--

DROP TABLE IF EXISTS `rpttracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttracking` (
  `objid` varchar(50) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `trackingno` varchar(25) NOT NULL,
  `dtfiled` datetime DEFAULT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `txntype_objid` varchar(50) DEFAULT NULL,
  `releasedate` datetime DEFAULT NULL,
  `releasemode` varchar(50) DEFAULT NULL,
  `receivedby` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `landcount` int(11) DEFAULT '0',
  `bldgcount` int(11) DEFAULT '0',
  `machcount` int(11) DEFAULT '0',
  `planttreecount` int(11) DEFAULT '0',
  `misccount` int(11) DEFAULT '0',
  `pin` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_rpttracking_trackingno` (`trackingno`),
  KEY `ix_rpttracking_pin` (`pin`),
  KEY `ix_rpttracking_receivedby` (`receivedby`),
  KEY `ix_rpttracking_remarks` (`remarks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttracking`
--

LOCK TABLES `rpttracking` WRITE;
/*!40000 ALTER TABLE `rpttracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttransmittal`
--

DROP TABLE IF EXISTS `rpttransmittal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttransmittal` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `filetype` varchar(50) NOT NULL,
  `txnno` varchar(15) NOT NULL,
  `txndate` datetime NOT NULL,
  `lgu_objid` varchar(50) NOT NULL,
  `lgu_name` varchar(50) NOT NULL,
  `lgu_type` varchar(50) NOT NULL,
  `tolgu_objid` varchar(50) NOT NULL,
  `tolgu_name` varchar(50) NOT NULL,
  `tolgu_type` varchar(50) NOT NULL,
  `createdby_objid` varchar(50) NOT NULL,
  `createdby_name` varchar(100) NOT NULL,
  `createdby_title` varchar(50) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_txnno` (`txnno`),
  KEY `ix_createdby_name` (`createdby_name`),
  KEY `ix_lguname` (`lgu_name`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttransmittal`
--

LOCK TABLES `rpttransmittal` WRITE;
/*!40000 ALTER TABLE `rpttransmittal` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttransmittal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpttransmittal_item`
--

DROP TABLE IF EXISTS `rpttransmittal_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpttransmittal_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `filetype` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `refno` varchar(150) NOT NULL,
  `message` varchar(350) DEFAULT NULL,
  `remarks` varchar(350) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `disapprovedby_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_parentid_refid` (`parentid`,`refid`),
  KEY `FK_rpttransmittal_item_rpttransmittal` (`parentid`),
  KEY `ix_refid` (`refid`),
  CONSTRAINT `rpttransmittal_item_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `rpttransmittal` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpttransmittal_item`
--

LOCK TABLES `rpttransmittal_item` WRITE;
/*!40000 ALTER TABLE `rpttransmittal_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpttransmittal_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptworkflow`
--

DROP TABLE IF EXISTS `rptworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptworkflow` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `appliedto` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptworkflow`
--

LOCK TABLES `rptworkflow` WRITE;
/*!40000 ALTER TABLE `rptworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptworkflow_state`
--

DROP TABLE IF EXISTS `rptworkflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptworkflow_state` (
  `objid` varchar(50) NOT NULL,
  `workflowid` varchar(50) NOT NULL,
  `fromstate` varchar(50) DEFAULT NULL,
  `tostate` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  `signatory` varchar(50) DEFAULT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_rptworkflowstate_workflowid` (`workflowid`),
  CONSTRAINT `FK_rptworkflowstate_rptworkflow` FOREIGN KEY (`workflowid`) REFERENCES `rptworkflow` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptworkflow_state`
--

LOCK TABLES `rptworkflow_state` WRITE;
/*!40000 ALTER TABLE `rptworkflow_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptworkflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpu`
--

DROP TABLE IF EXISTS `rpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpu` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `realpropertyid` varchar(50) DEFAULT NULL,
  `rputype` varchar(10) NOT NULL,
  `ry` int(11) NOT NULL,
  `fullpin` varchar(30) DEFAULT NULL,
  `suffix` int(11) NOT NULL,
  `subsuffix` int(11) DEFAULT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `exemptiontype_objid` varchar(50) DEFAULT NULL,
  `taxable` int(11) NOT NULL,
  `totalareaha` decimal(18,6) NOT NULL,
  `totalareasqm` decimal(18,6) NOT NULL,
  `totalbmv` decimal(16,2) NOT NULL,
  `totalmv` decimal(16,2) NOT NULL,
  `totalav` decimal(16,2) NOT NULL,
  `hasswornamount` int(11) NOT NULL,
  `swornamount` decimal(16,2) NOT NULL,
  `useswornamount` int(11) NOT NULL,
  `previd` varchar(50) DEFAULT NULL,
  `rpumasterid` varchar(50) DEFAULT NULL,
  `reclassed` int(11) DEFAULT NULL,
  `isonline` int(11) DEFAULT '0',
  `stewardparentrpumasterid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_rpu_exemptiontype` (`exemptiontype_objid`),
  KEY `FK_rpu_realpropertyid` (`realpropertyid`),
  KEY `ix_classification_objid` (`classification_objid`),
  KEY `ix_previd` (`previd`),
  KEY `ix_rpu_fullpin` (`fullpin`),
  KEY `ix_rpu_rpumasterid` (`rpumasterid`),
  KEY `ix_rpu_ry_fullpin` (`fullpin`,`ry`),
  KEY `ix_rpu_ry_state` (`state`),
  KEY `ix_rpu_state` (`state`),
  KEY `ix_rpy_ry` (`ry`),
  CONSTRAINT `FK_rpu_exemptiontype` FOREIGN KEY (`exemptiontype_objid`) REFERENCES `exemptiontype` (`objid`),
  CONSTRAINT `FK_rpu_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_rpu_realpropertyid` FOREIGN KEY (`realpropertyid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_rpu_rpumaster` FOREIGN KEY (`rpumasterid`) REFERENCES `rpumaster` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpu`
--

LOCK TABLES `rpu` WRITE;
/*!40000 ALTER TABLE `rpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpu_assessment`
--

DROP TABLE IF EXISTS `rpu_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpu_assessment` (
  `objid` varchar(50) NOT NULL,
  `rpuid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) DEFAULT NULL,
  `actualuse_objid` varchar(50) DEFAULT NULL,
  `areasqm` decimal(16,2) NOT NULL,
  `areaha` decimal(16,6) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `rputype` varchar(25) DEFAULT NULL,
  `taxable` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_rpuassessmetn_rpu` (`rpuid`),
  CONSTRAINT `FK_rpuassessmetn_rpu` FOREIGN KEY (`rpuid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpu_assessment`
--

LOCK TABLES `rpu_assessment` WRITE;
/*!40000 ALTER TABLE `rpu_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpu_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpu_history`
--

DROP TABLE IF EXISTS `rpu_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpu_history` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `rpumaster_objid` varchar(50) NOT NULL,
  `tdno` varchar(50) NOT NULL,
  `prevtdno` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(5) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `titleno` varchar(50) DEFAULT NULL,
  `titledate` date DEFAULT NULL,
  `portionof` varchar(255) DEFAULT NULL,
  `owner_name` varchar(1500) NOT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `administrator_name` varchar(255) DEFAULT NULL,
  `administrator_address` varchar(255) DEFAULT NULL,
  `beneficiary_name` varchar(255) DEFAULT NULL,
  `beneficiary_address` varchar(255) DEFAULT NULL,
  `classification_objid` varchar(50) NOT NULL,
  `totalareaha` decimal(16,6) NOT NULL,
  `totalareasqm` decimal(16,2) NOT NULL,
  `totalmv` decimal(16,2) NOT NULL,
  `totalav` decimal(16,2) NOT NULL,
  `memoranda` varchar(1500) NOT NULL,
  `surveyno` varchar(255) DEFAULT NULL,
  `cadastrallotno` varchar(255) DEFAULT NULL,
  `blockno` varchar(25) DEFAULT NULL,
  `purok` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `dtapproved` date NOT NULL,
  `cancelreason` varchar(50) NOT NULL,
  `canceldate` date NOT NULL,
  `cancelledbytdnos` varchar(255) NOT NULL,
  `prevhistory_objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_administrator_name` (`administrator_name`),
  KEY `ix_cadastrallotno` (`cadastrallotno`),
  KEY `ix_cancelledbytdnos` (`cancelledbytdnos`),
  KEY `ix_classification_objid` (`classification_objid`),
  KEY `ix_owner_name` (`owner_name`(255)),
  KEY `ix_pin` (`pin`),
  KEY `ix_prevhistory_objid` (`prevhistory_objid`),
  KEY `ix_prevtdno` (`prevtdno`),
  KEY `ix_rpumasterid` (`rpumaster_objid`),
  KEY `ix_tdno` (`tdno`),
  KEY `ix_titleno` (`titleno`),
  CONSTRAINT `fk_rpuhistory_rpumaster` FOREIGN KEY (`rpumaster_objid`) REFERENCES `rpumaster` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpu_history`
--

LOCK TABLES `rpu_history` WRITE;
/*!40000 ALTER TABLE `rpu_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpu_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpu_type_suffix`
--

DROP TABLE IF EXISTS `rpu_type_suffix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpu_type_suffix` (
  `objid` varchar(50) NOT NULL,
  `rputype` varchar(20) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpu_type_suffix`
--

LOCK TABLES `rpu_type_suffix` WRITE;
/*!40000 ALTER TABLE `rpu_type_suffix` DISABLE KEYS */;
INSERT INTO `rpu_type_suffix` VALUES ('BLDG-1001-1999','bldg',1001,1999),('BLDG-8001-8999','bldg',8001,8999),('LAND','land',0,0),('MACH-2001-2999','mach',2001,2999),('MISC-3001-3999','misc',3001,3999),('MISC-7001-7999','misc',7001,7999),('PLANTTREE-3001-6999','planttree',3001,6999);
/*!40000 ALTER TABLE `rpu_type_suffix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpumaster`
--

DROP TABLE IF EXISTS `rpumaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpumaster` (
  `objid` varchar(50) NOT NULL,
  `currentfaasid` varchar(50) DEFAULT NULL,
  `currentrpuid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpumaster`
--

LOCK TABLES `rpumaster` WRITE;
/*!40000 ALTER TABLE `rpumaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpumaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rysetting_lgu`
--

DROP TABLE IF EXISTS `rysetting_lgu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rysetting_lgu` (
  `rysettingid` varchar(50) NOT NULL,
  `lguid` varchar(50) NOT NULL,
  `lguname` varchar(100) NOT NULL,
  `settingtype` varchar(15) NOT NULL,
  `barangayid` varchar(50) DEFAULT NULL,
  `objid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lguid`,`rysettingid`),
  KEY `ix_lguid` (`lguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rysetting_lgu`
--

LOCK TABLES `rysetting_lgu` WRITE;
/*!40000 ALTER TABLE `rysetting_lgu` DISABLE KEYS */;
/*!40000 ALTER TABLE `rysetting_lgu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rysettinginfo`
--

DROP TABLE IF EXISTS `rysettinginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rysettinginfo` (
  `ry` int(11) NOT NULL,
  `ordinanceno` varchar(50) DEFAULT NULL,
  `ordinancedate` datetime DEFAULT NULL,
  `sangguniangname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rysettinginfo`
--

LOCK TABLES `rysettinginfo` WRITE;
/*!40000 ALTER TABLE `rysettinginfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `rysettinginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialaccountsetting`
--

DROP TABLE IF EXISTS `specialaccountsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialaccountsetting` (
  `objid` varchar(50) NOT NULL DEFAULT '',
  `item_objid` varchar(50) NOT NULL DEFAULT '',
  `amount` decimal(16,2) NOT NULL,
  `collectiontypeid` varchar(50) NOT NULL,
  `revtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_specialaccountsetting_collectiontype` (`collectiontypeid`),
  CONSTRAINT `FK_specialaccountsetting_collectiontype` FOREIGN KEY (`collectiontypeid`) REFERENCES `collectiontype` (`objid`),
  CONSTRAINT `specialaccountsetting_ibfk_1` FOREIGN KEY (`collectiontypeid`) REFERENCES `collectiontype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialaccountsetting`
--

LOCK TABLES `specialaccountsetting` WRITE;
/*!40000 ALTER TABLE `specialaccountsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialaccountsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structure`
--

DROP TABLE IF EXISTS `structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structure` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `indexno` int(11) NOT NULL,
  `showinfaas` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_structure_code` (`code`),
  UNIQUE KEY `ux_structure_name` (`name`),
  KEY `ix_structure_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structure`
--

LOCK TABLES `structure` WRITE;
/*!40000 ALTER TABLE `structure` DISABLE KEYS */;
INSERT INTO `structure` VALUES ('ST-5288b48:1473337046c:-7c48','APPROVED','WL','WALLS AND PARTITIONS',3,1),('ST-5288b48:1473337046c:-7c73','APPROVED','RF','ROOF',1,1),('ST-5288b48:1473337046c:-7ca8','APPROVED','FL','FLOORING',2,1);
/*!40000 ALTER TABLE `structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structurematerial`
--

DROP TABLE IF EXISTS `structurematerial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structurematerial` (
  `structure_objid` varchar(50) NOT NULL,
  `material_objid` varchar(50) NOT NULL,
  `display` int(11) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`material_objid`,`structure_objid`),
  KEY `FK_structurematerial_material` (`material_objid`),
  KEY `FK_structurematerial_strucutre` (`structure_objid`),
  CONSTRAINT `FK_structurematerial_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_structurematerial_strucutre` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structurematerial`
--

LOCK TABLES `structurematerial` WRITE;
/*!40000 ALTER TABLE `structurematerial` DISABLE KEYS */;
INSERT INTO `structurematerial` VALUES ('ST-5288b48:1473337046c:-7ca8','BAMB',0,0),('ST-5288b48:1473337046c:-7c48','CHB',0,0),('ST-5288b48:1473337046c:-7c73','GISHEET',1,0),('ST-5288b48:1473337046c:-7ca8','MARB',0,0),('ST-5288b48:1473337046c:-7c73','MAT-1d573228:149e7fe512e:-6cc3',0,0),('ST-5288b48:1473337046c:-7c48','MAT-1d573228:149e7fe512e:-6ccc',0,0),('ST-5288b48:1473337046c:-7ca8','MAT-1d573228:149e7fe512e:-6ccc',0,0),('ST-5288b48:1473337046c:-7c48','NIPA',0,0);
/*!40000 ALTER TABLE `structurematerial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdividedland`
--

DROP TABLE IF EXISTS `subdividedland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdividedland` (
  `objid` varchar(50) NOT NULL,
  `subdivisionid` varchar(50) NOT NULL,
  `itemno` varchar(10) DEFAULT NULL,
  `newtdno` varchar(50) DEFAULT NULL,
  `newutdno` varchar(50) DEFAULT NULL,
  `newpin` varchar(25) NOT NULL,
  `newtitletype` varchar(50) DEFAULT NULL,
  `newtitleno` varchar(50) DEFAULT NULL,
  `newtitledate` varchar(50) DEFAULT NULL,
  `areasqm` decimal(16,6) DEFAULT NULL,
  `areaha` decimal(16,6) DEFAULT NULL,
  `memoranda` longtext,
  `administrator_objid` varchar(50) DEFAULT NULL,
  `administrator_name` varchar(200) DEFAULT NULL,
  `administrator_address` varchar(200) DEFAULT NULL,
  `taxpayer_objid` varchar(50) DEFAULT NULL,
  `taxpayer_name` longtext,
  `taxpayer_address` varchar(200) DEFAULT NULL,
  `owner_name` longtext,
  `owner_address` longtext,
  `newrpid` varchar(50) NOT NULL,
  `newrpuid` varchar(50) DEFAULT NULL,
  `newfaasid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_newpin` (`subdivisionid`,`newpin`),
  KEY `FK_subdividedland_faas` (`newfaasid`),
  KEY `FK_subdividedland_newrp` (`newrpid`),
  KEY `FK_subdividedland_newrpu` (`newrpuid`),
  KEY `FK_subdividedland_subdivision` (`subdivisionid`),
  KEY `ix_subdividedland_newpin` (`newpin`),
  CONSTRAINT `FK_subdividedland_faas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdividedland_newrp` FOREIGN KEY (`newrpid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_subdividedland_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_subdividedland_subdivision` FOREIGN KEY (`subdivisionid`) REFERENCES `subdivision` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdividedland`
--

LOCK TABLES `subdividedland` WRITE;
/*!40000 ALTER TABLE `subdividedland` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdividedland` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivision`
--

DROP TABLE IF EXISTS `subdivision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivision` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(5) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` datetime NOT NULL,
  `autonumber` int(11) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `memoranda` longtext NOT NULL,
  `motherfaasid` varchar(50) DEFAULT NULL,
  `lguid` varchar(50) DEFAULT NULL,
  `signatories` longtext,
  `source` varchar(50) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `originlguid` varchar(50) DEFAULT NULL,
  `mothertdnos` longtext,
  `motherpins` longtext,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_subdivision_txnno` (`txnno`),
  KEY `ix_lguid` (`lguid`),
  KEY `ix_subdivision_motherpins` (`motherpins`(255)),
  KEY `ix_subdivision_mothertdnos` (`mothertdnos`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision`
--

LOCK TABLES `subdivision` WRITE;
/*!40000 ALTER TABLE `subdivision` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivision_assist`
--

DROP TABLE IF EXISTS `subdivision_assist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivision_assist` (
  `objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `taskstate` varchar(50) NOT NULL,
  `assignee_objid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `ux_parent_assignee` (`parent_objid`,`taskstate`,`assignee_objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_parent_objid` (`parent_objid`),
  CONSTRAINT `fk_subdivision_assist_subdivision` FOREIGN KEY (`parent_objid`) REFERENCES `subdivision` (`objid`),
  CONSTRAINT `fk_subdivision_assist_user` FOREIGN KEY (`assignee_objid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision_assist`
--

LOCK TABLES `subdivision_assist` WRITE;
/*!40000 ALTER TABLE `subdivision_assist` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivision_assist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivision_assist_item`
--

DROP TABLE IF EXISTS `subdivision_assist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivision_assist_item` (
  `objid` varchar(50) NOT NULL,
  `subdivision_objid` varchar(50) NOT NULL,
  `parent_objid` varchar(50) NOT NULL,
  `pintype` varchar(10) NOT NULL,
  `section` varchar(5) NOT NULL,
  `startparcel` int(11) NOT NULL,
  `endparcel` int(11) NOT NULL,
  `parcelcount` int(11) DEFAULT NULL,
  `parcelcreated` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parent_objid` (`parent_objid`),
  KEY `ix_subdivision_objid` (`subdivision_objid`),
  CONSTRAINT `fk_subdivision_assist_item_subdivision` FOREIGN KEY (`subdivision_objid`) REFERENCES `subdivision` (`objid`),
  CONSTRAINT `fk_subdivision_assist_item_subdivision_assist` FOREIGN KEY (`parent_objid`) REFERENCES `subdivision_assist` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision_assist_item`
--

LOCK TABLES `subdivision_assist_item` WRITE;
/*!40000 ALTER TABLE `subdivision_assist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivision_assist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivision_cancelledimprovement`
--

DROP TABLE IF EXISTS `subdivision_cancelledimprovement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivision_cancelledimprovement` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `faasid` varchar(50) DEFAULT NULL,
  `remarks` longtext,
  `lasttaxyear` int(11) DEFAULT NULL,
  `lguid` varchar(50) DEFAULT NULL,
  `reason_objid` varchar(50) DEFAULT NULL,
  `cancelledbytdnos` varchar(500) DEFAULT NULL,
  `cancelledbypins` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_subdivision_cancelledimprovement_faas` (`faasid`),
  KEY `FK_subdivision_cancelledimprovement_subdivision` (`parentid`),
  CONSTRAINT `FK_subdivision_cancelledimprovement_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdivision_cancelledimprovement_subdivision` FOREIGN KEY (`parentid`) REFERENCES `subdivision` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision_cancelledimprovement`
--

LOCK TABLES `subdivision_cancelledimprovement` WRITE;
/*!40000 ALTER TABLE `subdivision_cancelledimprovement` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivision_cancelledimprovement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivision_motherland`
--

DROP TABLE IF EXISTS `subdivision_motherland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivision_motherland` (
  `objid` varchar(50) NOT NULL,
  `subdivisionid` varchar(50) NOT NULL,
  `landfaasid` varchar(50) NOT NULL,
  `rpuid` varchar(50) NOT NULL,
  `rpid` varchar(50) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_consolidatedland_faas` (`landfaasid`),
  KEY `FK_consolidatedland_subdivision` (`subdivisionid`),
  CONSTRAINT `FK_subdivision_motherland_faas` FOREIGN KEY (`landfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdivison_motherland_subdivision` FOREIGN KEY (`subdivisionid`) REFERENCES `subdivision` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision_motherland`
--

LOCK TABLES `subdivision_motherland` WRITE;
/*!40000 ALTER TABLE `subdivision_motherland` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivision_motherland` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivision_task`
--

DROP TABLE IF EXISTS `subdivision_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivision_task` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `assignee_title` varchar(80) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `actor_title` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `signature` longtext,
  `returnedby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivision_task`
--

LOCK TABLES `subdivision_task` WRITE;
/*!40000 ALTER TABLE `subdivision_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivision_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivisionaffectedrpu`
--

DROP TABLE IF EXISTS `subdivisionaffectedrpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdivisionaffectedrpu` (
  `objid` varchar(50) NOT NULL,
  `subdivisionid` varchar(50) NOT NULL,
  `itemno` varchar(50) DEFAULT NULL,
  `subdividedlandid` varchar(50) DEFAULT NULL,
  `prevfaasid` varchar(50) DEFAULT NULL,
  `newfaasid` varchar(50) DEFAULT NULL,
  `newtdno` varchar(50) DEFAULT NULL,
  `newutdno` varchar(50) DEFAULT NULL,
  `newsuffix` int(11) DEFAULT NULL,
  `newpin` varchar(25) DEFAULT NULL,
  `newrpuid` varchar(50) DEFAULT NULL,
  `newrpid` varchar(50) DEFAULT NULL,
  `memoranda` longtext,
  `prevpin` varchar(50) DEFAULT NULL,
  `prevtdno` varchar(50) DEFAULT NULL,
  `isnew` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `FK_subdivisionaffectedpru_newfaas` (`newfaasid`),
  KEY `FK_subdivisionaffectedpru_newrpu` (`newrpuid`),
  KEY `FK_subdivisionaffectedpru_prevfaas` (`prevfaasid`),
  KEY `FK_subdivisionaffectedpru_subdividedland` (`subdividedlandid`),
  KEY `FK_subdivisionaffectedpru_subdivision` (`subdivisionid`),
  KEY `ix_subdivisionaffectedrpu_newtdno` (`newtdno`),
  CONSTRAINT `FK_subdivisionaffectedpru_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_subdividedland` FOREIGN KEY (`subdividedlandid`) REFERENCES `subdividedland` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_subdivision` FOREIGN KEY (`subdivisionid`) REFERENCES `subdivision` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivisionaffectedrpu`
--

LOCK TABLES `subdivisionaffectedrpu` WRITE;
/*!40000 ALTER TABLE `subdivisionaffectedrpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdivisionaffectedrpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdata`
--

DROP TABLE IF EXISTS `syncdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdata` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(50) NOT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `dtfiled` datetime NOT NULL,
  `orgid` varchar(50) DEFAULT NULL,
  `remote_orgid` varchar(50) DEFAULT NULL,
  `remote_orgcode` varchar(20) DEFAULT NULL,
  `remote_orgclass` varchar(20) DEFAULT NULL,
  `sender_objid` varchar(50) DEFAULT NULL,
  `sender_name` varchar(150) DEFAULT NULL,
  `fileid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_dtfiled` (`dtfiled`),
  KEY `ix_fileid` (`fileid`),
  KEY `ix_orgid` (`orgid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_reftype` (`reftype`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdata`
--

LOCK TABLES `syncdata` WRITE;
/*!40000 ALTER TABLE `syncdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdata_forprocess`
--

DROP TABLE IF EXISTS `syncdata_forprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdata_forprocess` (
  `objid` varchar(50) NOT NULL,
  `processed` int(11) DEFAULT '0',
  PRIMARY KEY (`objid`),
  CONSTRAINT `fk_forprocess_syncdata_item` FOREIGN KEY (`objid`) REFERENCES `syncdata_item` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdata_forprocess`
--

LOCK TABLES `syncdata_forprocess` WRITE;
/*!40000 ALTER TABLE `syncdata_forprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdata_forprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdata_forsync`
--

DROP TABLE IF EXISTS `syncdata_forsync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdata_forsync` (
  `objid` varchar(50) NOT NULL,
  `reftype` varchar(100) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `action` varchar(100) NOT NULL,
  `orgid` varchar(25) NOT NULL,
  `dtfiled` datetime NOT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `createdby_title` varchar(100) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`objid`),
  KEY `ix_createdbyid` (`createdby_objid`),
  KEY `ix_dtfiled` (`dtfiled`),
  KEY `ix_refno` (`refno`),
  KEY `ix_reftype` (`reftype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdata_forsync`
--

LOCK TABLES `syncdata_forsync` WRITE;
/*!40000 ALTER TABLE `syncdata_forsync` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdata_forsync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdata_item`
--

DROP TABLE IF EXISTS `syncdata_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdata_item` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `reftype` varchar(255) NOT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `error` text,
  `idx` int(11) NOT NULL,
  `info` text,
  `async` int(11) DEFAULT '0',
  `dependedaction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_refno` (`refno`),
  KEY `ix_state` (`state`),
  CONSTRAINT `fk_syncdataitem_syncdata` FOREIGN KEY (`parentid`) REFERENCES `syncdata` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdata_item`
--

LOCK TABLES `syncdata_item` WRITE;
/*!40000 ALTER TABLE `syncdata_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdata_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdata_org`
--

DROP TABLE IF EXISTS `syncdata_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdata_org` (
  `orgid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `errorcount` int(11) DEFAULT '0',
  PRIMARY KEY (`orgid`),
  KEY `ix_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdata_org`
--

LOCK TABLES `syncdata_org` WRITE;
/*!40000 ALTER TABLE `syncdata_org` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdata_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdata_pending`
--

DROP TABLE IF EXISTS `syncdata_pending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdata_pending` (
  `objid` varchar(50) NOT NULL,
  `error` text,
  `expirydate` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_expirydate` (`expirydate`),
  CONSTRAINT `fk_syncdata_pending_syncdata` FOREIGN KEY (`objid`) REFERENCES `syncdata` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdata_pending`
--

LOCK TABLES `syncdata_pending` WRITE;
/*!40000 ALTER TABLE `syncdata_pending` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdata_pending` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-12 13:42:54


--
-- SQL VIEWS
--

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
-- Final view structure for view `vw_assessment_notice`
--

/*!50001 DROP VIEW IF EXISTS `vw_assessment_notice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_assessment_notice` AS select `a`.`objid` AS `objid`,`a`.`state` AS `state`,`a`.`txnno` AS `txnno`,`a`.`txndate` AS `txndate`,`a`.`taxpayerid` AS `taxpayerid`,`a`.`taxpayername` AS `taxpayername`,`a`.`taxpayeraddress` AS `taxpayeraddress`,`a`.`dtdelivered` AS `dtdelivered`,`a`.`receivedby` AS `receivedby`,`a`.`remarks` AS `remarks`,`a`.`assessmentyear` AS `assessmentyear`,`a`.`administrator_name` AS `administrator_name`,`a`.`administrator_address` AS `administrator_address`,`fl`.`tdno` AS `tdno`,`fl`.`displaypin` AS `fullpin`,`fl`.`cadastrallotno` AS `cadastrallotno`,`fl`.`titleno` AS `titleno` from ((`assessmentnotice` `a` join `assessmentnoticeitem` `i` on((`a`.`objid` = `i`.`assessmentnoticeid`))) join `faas_list` `fl` on((`i`.`faasid` = `fl`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_assessment_notice_item`
--

/*!50001 DROP VIEW IF EXISTS `vw_assessment_notice_item`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_assessment_notice_item` AS select `ni`.`objid` AS `objid`,`ni`.`assessmentnoticeid` AS `assessmentnoticeid`,`ni`.`info` AS `info`,`f`.`objid` AS `faasid`,`f`.`effectivityyear` AS `effectivityyear`,`f`.`effectivityqtr` AS `effectivityqtr`,`f`.`tdno` AS `tdno`,`f`.`taxpayer_objid` AS `taxpayer_objid`,`e`.`name` AS `taxpayer_name`,`e`.`address_text` AS `taxpayer_address`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`administrator_name` AS `administrator_name`,`f`.`administrator_address` AS `administrator_address`,`f`.`rpuid` AS `rpuid`,`f`.`lguid` AS `lguid`,`f`.`txntype_objid` AS `txntype_objid`,`ft`.`displaycode` AS `txntype_code`,`rpu`.`rputype` AS `rputype`,`rpu`.`ry` AS `ry`,`rpu`.`fullpin` AS `fullpin`,`rpu`.`taxable` AS `taxable`,`rpu`.`totalareaha` AS `totalareaha`,`rpu`.`totalareasqm` AS `totalareasqm`,`rpu`.`totalbmv` AS `totalbmv`,`rpu`.`totalmv` AS `totalmv`,`rpu`.`totalav` AS `totalav`,`rp`.`section` AS `section`,`rp`.`parcel` AS `parcel`,`rp`.`surveyno` AS `surveyno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`claimno` AS `claimno`,`rp`.`street` AS `street`,`o`.`name` AS `lguname`,`b`.`name` AS `barangay`,`pc`.`code` AS `classcode`,`pc`.`name` AS `classification` from (((((((((`assessmentnoticeitem` `ni` join `faas` `f` on((`ni`.`faasid` = `f`.`objid`))) left join `txnsignatory` `ts` on(((`ts`.`refid` = `f`.`objid`) and (`ts`.`type` = 'APPROVER')))) join `rpu` on((`f`.`rpuid` = `rpu`.`objid`))) join `propertyclassification` `pc` on((`rpu`.`classification_objid` = `pc`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) join `faas_txntype` `ft` on((`f`.`txntype_objid` = `ft`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_batch_rpttaxcredit_error`
--

/*!50001 DROP VIEW IF EXISTS `vw_batch_rpttaxcredit_error`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_batch_rpttaxcredit_error` AS select `br`.`objid` AS `objid`,`br`.`parentid` AS `parentid`,`br`.`state` AS `state`,`br`.`error` AS `error`,`br`.`barangayid` AS `barangayid`,`rl`.`tdno` AS `tdno` from (`batch_rpttaxcredit_ledger` `br` join `rptledger` `rl` on((`br`.`objid` = `rl`.`objid`))) where (`br`.`state` = 'ERROR') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_batchgr`
--

/*!50001 DROP VIEW IF EXISTS `vw_batchgr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_batchgr` AS select `bg`.`objid` AS `objid`,`bg`.`state` AS `state`,`bg`.`ry` AS `ry`,`bg`.`lgu_objid` AS `lgu_objid`,`bg`.`barangay_objid` AS `barangay_objid`,`bg`.`rputype` AS `rputype`,`bg`.`classification_objid` AS `classification_objid`,`bg`.`section` AS `section`,`bg`.`memoranda` AS `memoranda`,`bg`.`txntype_objid` AS `txntype_objid`,`bg`.`txnno` AS `txnno`,`bg`.`txndate` AS `txndate`,`bg`.`effectivityyear` AS `effectivityyear`,`bg`.`effectivityqtr` AS `effectivityqtr`,`bg`.`originlgu_objid` AS `originlgu_objid`,`l`.`name` AS `lgu_name`,`b`.`name` AS `barangay_name`,`b`.`pin` AS `barangay_pin`,`pc`.`name` AS `classification_name`,`t`.`objid` AS `taskid`,`t`.`state` AS `taskstate`,`t`.`assignee_objid` AS `assignee_objid` from ((((`batchgr` `bg` join `sys_org` `l` on((`bg`.`lgu_objid` = `l`.`objid`))) left join `barangay` `b` on((`bg`.`barangay_objid` = `b`.`objid`))) left join `propertyclassification` `pc` on((`bg`.`classification_objid` = `pc`.`objid`))) left join `batchgr_task` `t` on(((`bg`.`objid` = `t`.`refid`) and isnull(`t`.`enddate`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_building`
--

/*!50001 DROP VIEW IF EXISTS `vw_building`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_building` AS select `f`.`objid` AS `objid`,`f`.`state` AS `state`,`f`.`rpuid` AS `rpuid`,`f`.`realpropertyid` AS `realpropertyid`,`f`.`tdno` AS `tdno`,`f`.`fullpin` AS `fullpin`,`f`.`taxpayer_objid` AS `taxpayer_objid`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`administrator_name` AS `administrator_name`,`f`.`administrator_address` AS `administrator_address`,`f`.`lguid` AS `lgu_objid`,`o`.`name` AS `lgu_name`,`b`.`objid` AS `barangay_objid`,`b`.`name` AS `barangay_name`,`r`.`classification_objid` AS `classification_objid`,`pc`.`name` AS `classification_name`,`rp`.`pin` AS `pin`,`rp`.`section` AS `section`,`rp`.`ry` AS `ry`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`surveyno` AS `surveyno`,`bt`.`objid` AS `bldgtype_objid`,`bt`.`name` AS `bldgtype_name`,`bk`.`objid` AS `bldgkind_objid`,`bk`.`name` AS `bldgkind_name`,`bu`.`basemarketvalue` AS `basemarketvalue`,`bu`.`adjustment` AS `adjustment`,`bu`.`depreciationvalue` AS `depreciationvalue`,`bu`.`marketvalue` AS `marketvalue`,`bu`.`assessedvalue` AS `assessedvalue`,`al`.`objid` AS `actualuse_objid`,`al`.`name` AS `actualuse_name`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav` from (((((((((((`faas` `f` join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `bldgrpu_structuraltype` `bst` on((`r`.`objid` = `bst`.`bldgrpuid`))) join `bldgtype` `bt` on((`bst`.`bldgtype_objid` = `bt`.`objid`))) join `bldgkindbucc` `bucc` on((`bst`.`bldgkindbucc_objid` = `bucc`.`objid`))) join `bldgkind` `bk` on((`bucc`.`bldgkind_objid` = `bk`.`objid`))) join `bldguse` `bu` on((`bst`.`objid` = `bu`.`structuraltype_objid`))) join `bldgassesslevel` `al` on((`bu`.`actualuse_objid` = `al`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_certification_land_improvement`
--

/*!50001 DROP VIEW IF EXISTS `vw_certification_land_improvement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_certification_land_improvement` AS select `f`.`objid` AS `faasid`,`pt`.`name` AS `improvement`,`ptd`.`areacovered` AS `areacovered`,`ptd`.`productive` AS `productive`,`ptd`.`nonproductive` AS `nonproductive`,`ptd`.`basemarketvalue` AS `basemarketvalue`,`ptd`.`marketvalue` AS `marketvalue`,`ptd`.`unitvalue` AS `unitvalue`,`ptd`.`assessedvalue` AS `assessedvalue` from ((`faas` `f` join `planttreedetail` `ptd` on((`f`.`rpuid` = `ptd`.`landrpuid`))) join `planttree` `pt` on((`ptd`.`planttree_objid` = `pt`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_certification_landdetail`
--

/*!50001 DROP VIEW IF EXISTS `vw_certification_landdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_certification_landdetail` AS select `f`.`objid` AS `faasid`,`ld`.`areaha` AS `areaha`,`ld`.`areasqm` AS `areasqm`,`ld`.`assessedvalue` AS `assessedvalue`,`ld`.`marketvalue` AS `marketvalue`,`ld`.`basemarketvalue` AS `basemarketvalue`,`ld`.`unitvalue` AS `unitvalue`,`lspc`.`name` AS `specificclass_name` from ((`faas` `f` join `landdetail` `ld` on((`f`.`rpuid` = `ld`.`landrpuid`))) join `landspecificclass` `lspc` on((`ld`.`landspecificclass_objid` = `lspc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_faas_lookup`
--

/*!50001 DROP VIEW IF EXISTS `vw_faas_lookup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_faas_lookup` AS select `fl`.`objid` AS `objid`,`fl`.`state` AS `state`,`fl`.`rpuid` AS `rpuid`,`fl`.`utdno` AS `utdno`,`fl`.`tdno` AS `tdno`,`fl`.`txntype_objid` AS `txntype_objid`,`fl`.`effectivityyear` AS `effectivityyear`,`fl`.`effectivityqtr` AS `effectivityqtr`,`fl`.`taxpayer_objid` AS `taxpayer_objid`,`fl`.`owner_name` AS `owner_name`,`fl`.`owner_address` AS `owner_address`,`fl`.`prevtdno` AS `prevtdno`,`fl`.`cancelreason` AS `cancelreason`,`fl`.`cancelledbytdnos` AS `cancelledbytdnos`,`fl`.`lguid` AS `lguid`,`fl`.`realpropertyid` AS `realpropertyid`,`fl`.`displaypin` AS `fullpin`,`fl`.`originlguid` AS `originlguid`,`e`.`name` AS `taxpayer_name`,`e`.`address_text` AS `taxpayer_address`,`pc`.`code` AS `classification_code`,`pc`.`code` AS `classcode`,`pc`.`name` AS `classification_name`,`pc`.`name` AS `classname`,`fl`.`ry` AS `ry`,`fl`.`rputype` AS `rputype`,`fl`.`totalmv` AS `totalmv`,`fl`.`totalav` AS `totalav`,`fl`.`totalareasqm` AS `totalareasqm`,`fl`.`totalareaha` AS `totalareaha`,`fl`.`barangayid` AS `barangayid`,`fl`.`cadastrallotno` AS `cadastrallotno`,`fl`.`blockno` AS `blockno`,`fl`.`surveyno` AS `surveyno`,`fl`.`pin` AS `pin`,`fl`.`barangay` AS `barangay_name`,`fl`.`trackingno` AS `trackingno` from ((`faas_list` `fl` left join `propertyclassification` `pc` on((`fl`.`classification_objid` = `pc`.`objid`))) left join `entity` `e` on((`fl`.`taxpayer_objid` = `e`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_idle_land`
--

/*!50001 DROP VIEW IF EXISTS `vw_idle_land`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_idle_land` AS select `f`.`objid` AS `objid`,`f`.`state` AS `state`,`f`.`rpuid` AS `rpuid`,`f`.`realpropertyid` AS `realpropertyid`,`f`.`lguid` AS `lguid`,`f`.`barangayid` AS `barangayid`,`o`.`name` AS `lgu`,`f`.`barangay` AS `barangay`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`administrator_name` AS `administrator_name`,`f`.`administrator_address` AS `administrator_address`,`f`.`tdno` AS `tdno`,`f`.`titleno` AS `titleno`,`f`.`pin` AS `pin`,`pc`.`name` AS `classification`,`f`.`cadastrallotno` AS `cadastrallotno`,`f`.`blockno` AS `blockno`,`f`.`ry` AS `ry`,`f`.`totalareaha` AS `totalareaha`,`f`.`totalareasqm` AS `totalareasqm`,`f`.`totalmv` AS `totalmv`,`f`.`totalav` AS `totalav` from (((`faas_list` `f` join `landrpu` `lr` on(`f`.`rpuid`)) join `propertyclassification` `pc` on(`f`.`classification_objid`)) join `sys_org` `o` on(`f`.`lguid`)) where ((`f`.`state` in ('current','cancelled')) and (`lr`.`idleland` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_abstract_of_collection_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_abstract_of_collection_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_abstract_of_collection_detail` AS select `liq`.`objid` AS `liquidationid`,`liq`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controldate` AS `remittancedate`,`cr`.`objid` AS `receiptid`,`cr`.`receiptdate` AS `ordate`,`cr`.`receiptno` AS `orno`,`cr`.`collector_objid` AS `collectorid`,`rl`.`objid` AS `rptledgerid`,`rl`.`fullpin` AS `fullpin`,`rl`.`titleno` AS `titleno`,`rl`.`cadastrallotno` AS `cadastrallotno`,`rl`.`rputype` AS `rputype`,`rl`.`totalmv` AS `totalmv`,`b`.`name` AS `barangay`,`rp`.`fromqtr` AS `fromqtr`,`rp`.`toqtr` AS `toqtr`,`rpi`.`year` AS `year`,`rpi`.`qtr` AS `qtr`,`rpi`.`revtype` AS `revtype`,(case when isnull(`cv`.`objid`) then `rl`.`owner_name` else '*** voided ***' end) AS `taxpayername`,(case when isnull(`cv`.`objid`) then `rl`.`tdno` else '' end) AS `tdno`,(case when isnull(`m`.`name`) then `c`.`name` else `m`.`name` end) AS `municityname`,(case when isnull(`cv`.`objid`) then `rl`.`classcode` else '' end) AS `classification`,(case when isnull(`cv`.`objid`) then `rl`.`totalav` else 0.0 end) AS `assessvalue`,(case when isnull(`cv`.`objid`) then `rl`.`totalav` else 0.0 end) AS `assessedvalue`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `basiccurrentyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `basicpreviousyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic')) then `rpi`.`discount` else 0.0 end) AS `basicdiscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `basicpenaltycurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `basicpenaltyprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `sefcurrentyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `sefpreviousyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef')) then `rpi`.`discount` else 0.0 end) AS `sefdiscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `sefpenaltycurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `sefpenaltyprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `basicidlecurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `basicidleprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle')) then `rpi`.`amount` else 0.0 end) AS `basicidlediscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `basicidlecurrentpenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `basicidlepreviouspenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `shcurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `shprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh')) then `rpi`.`discount` else 0.0 end) AS `shdiscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `shcurrentpenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `shpreviouspenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'firecode')) then `rpi`.`amount` else 0.0 end) AS `firecode`,(case when isnull(`cv`.`objid`) then ((`rpi`.`amount` - `rpi`.`discount`) + `rpi`.`interest`) else 0.0 end) AS `total`,(case when isnull(`cv`.`objid`) then `rpi`.`partialled` else 0 end) AS `partialled` from ((((((((((`collectionvoucher` `liq` join `remittance` `rem` on((`rem`.`collectionvoucherid` = `liq`.`objid`))) join `cashreceipt` `cr` on((`rem`.`objid` = `cr`.`remittanceid`))) left join `cashreceipt_void` `cv` on((`cr`.`objid` = `cv`.`receiptid`))) join `rptpayment` `rp` on((`rp`.`receiptid` = `cr`.`objid`))) join `rptpayment_item` `rpi` on((`rpi`.`parentid` = `rp`.`objid`))) join `rptledger` `rl` on((`rl`.`objid` = `rp`.`refid`))) join `barangay` `b` on((`b`.`objid` = `rl`.`barangayid`))) left join `district` `d` on((`b`.`parentid` = `d`.`objid`))) left join `city` `c` on((`d`.`parentid` = `c`.`objid`))) left join `municipality` `m` on((`b`.`parentid` = `m`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;


--
-- Final view structure for view `vw_landtax_eor`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_eor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_eor` AS select `training_eor`.`eor`.`objid` AS `objid`,`training_eor`.`eor`.`receiptno` AS `receiptno`,`training_eor`.`eor`.`receiptdate` AS `receiptdate`,`training_eor`.`eor`.`txndate` AS `txndate`,`training_eor`.`eor`.`state` AS `state`,`training_eor`.`eor`.`partnerid` AS `partnerid`,`training_eor`.`eor`.`txntype` AS `txntype`,`training_eor`.`eor`.`traceid` AS `traceid`,`training_eor`.`eor`.`tracedate` AS `tracedate`,`training_eor`.`eor`.`refid` AS `refid`,`training_eor`.`eor`.`paidby` AS `paidby`,`training_eor`.`eor`.`paidbyaddress` AS `paidbyaddress`,`training_eor`.`eor`.`payer_objid` AS `payer_objid`,`training_eor`.`eor`.`paymethod` AS `paymethod`,`training_eor`.`eor`.`paymentrefid` AS `paymentrefid`,`training_eor`.`eor`.`remittanceid` AS `remittanceid`,`training_eor`.`eor`.`remarks` AS `remarks`,`training_eor`.`eor`.`amount` AS `amount`,`training_eor`.`eor`.`lockid` AS `lockid` from `training_eor`.`eor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_eor_remittance`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_eor_remittance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_eor_remittance` AS select `training_eor`.`eor_remittance`.`objid` AS `objid`,`training_eor`.`eor_remittance`.`state` AS `state`,`training_eor`.`eor_remittance`.`controlno` AS `controlno`,`training_eor`.`eor_remittance`.`partnerid` AS `partnerid`,`training_eor`.`eor_remittance`.`controldate` AS `controldate`,`training_eor`.`eor_remittance`.`dtcreated` AS `dtcreated`,`training_eor`.`eor_remittance`.`createdby_objid` AS `createdby_objid`,`training_eor`.`eor_remittance`.`createdby_name` AS `createdby_name`,`training_eor`.`eor_remittance`.`amount` AS `amount`,`training_eor`.`eor_remittance`.`dtposted` AS `dtposted`,`training_eor`.`eor_remittance`.`postedby_objid` AS `postedby_objid`,`training_eor`.`eor_remittance`.`postedby_name` AS `postedby_name`,`training_eor`.`eor_remittance`.`lockid` AS `lockid` from `training_eor`.`eor_remittance` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;


--
-- Final view structure for view `vw_landtax_abstract_of_collection_detail_eor`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_abstract_of_collection_detail_eor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_abstract_of_collection_detail_eor` AS select `rem`.`objid` AS `liquidationid`,`rem`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controldate` AS `remittancedate`,`eor`.`objid` AS `receiptid`,`eor`.`receiptdate` AS `ordate`,`eor`.`receiptno` AS `orno`,`rem`.`createdby_objid` AS `collectorid`,`rl`.`objid` AS `rptledgerid`,`rl`.`fullpin` AS `fullpin`,`rl`.`titleno` AS `titleno`,`rl`.`cadastrallotno` AS `cadastrallotno`,`rl`.`rputype` AS `rputype`,`rl`.`totalmv` AS `totalmv`,`b`.`name` AS `barangay`,`rp`.`fromqtr` AS `fromqtr`,`rp`.`toqtr` AS `toqtr`,`rpi`.`year` AS `year`,`rpi`.`qtr` AS `qtr`,`rpi`.`revtype` AS `revtype`,(case when isnull(`cv`.`objid`) then `rl`.`owner_name` else '*** voided ***' end) AS `taxpayername`,(case when isnull(`cv`.`objid`) then `rl`.`tdno` else '' end) AS `tdno`,(case when isnull(`m`.`name`) then `c`.`name` else `m`.`name` end) AS `municityname`,(case when isnull(`cv`.`objid`) then `rl`.`classcode` else '' end) AS `classification`,(case when isnull(`cv`.`objid`) then `rl`.`totalav` else 0.0 end) AS `assessvalue`,(case when isnull(`cv`.`objid`) then `rl`.`totalav` else 0.0 end) AS `assessedvalue`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `basiccurrentyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `basicpreviousyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic')) then `rpi`.`discount` else 0.0 end) AS `basicdiscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `basicpenaltycurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basic') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `basicpenaltyprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `sefcurrentyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `sefpreviousyear`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef')) then `rpi`.`discount` else 0.0 end) AS `sefdiscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `sefpenaltycurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sef') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `sefpenaltyprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `basicidlecurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `basicidleprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle')) then `rpi`.`amount` else 0.0 end) AS `basicidlediscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `basicidlecurrentpenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'basicidle') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `basicidlepreviouspenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`amount` else 0.0 end) AS `shcurrent`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`amount` else 0.0 end) AS `shprevious`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh')) then `rpi`.`discount` else 0.0 end) AS `shdiscount`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('current','advance'))) then `rpi`.`interest` else 0.0 end) AS `shcurrentpenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'sh') and (`rpi`.`revperiod` in ('previous','prior'))) then `rpi`.`interest` else 0.0 end) AS `shpreviouspenalty`,(case when (isnull(`cv`.`objid`) and (`rpi`.`revtype` = 'firecode')) then `rpi`.`amount` else 0.0 end) AS `firecode`,(case when isnull(`cv`.`objid`) then ((`rpi`.`amount` - `rpi`.`discount`) + `rpi`.`interest`) else 0.0 end) AS `total`,(case when isnull(`cv`.`objid`) then `rpi`.`partialled` else 0 end) AS `partialled` from (((((((((`vw_landtax_eor_remittance` `rem` join `vw_landtax_eor` `eor` on((`rem`.`objid` = `eor`.`remittanceid`))) left join `cashreceipt_void` `cv` on((`eor`.`objid` = `cv`.`receiptid`))) join `rptpayment` `rp` on((`eor`.`objid` = `rp`.`receiptid`))) join `rptpayment_item` `rpi` on((`rpi`.`parentid` = `rp`.`objid`))) join `rptledger` `rl` on((`rl`.`objid` = `rp`.`refid`))) join `barangay` `b` on((`b`.`objid` = `rl`.`barangayid`))) left join `district` `d` on((`b`.`parentid` = `d`.`objid`))) left join `city` `c` on((`d`.`parentid` = `c`.`objid`))) left join `municipality` `m` on((`b`.`parentid` = `m`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_collection_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_collection_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_collection_detail` AS select `cv`.`objid` AS `liquidationid`,`cv`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controldate` AS `remittancedate`,`cr`.`receiptdate` AS `receiptdate`,`o`.`objid` AS `lguid`,`o`.`name` AS `lgu`,`b`.`objid` AS `barangayid`,`b`.`indexno` AS `brgyindex`,`b`.`name` AS `barangay`,`ri`.`revperiod` AS `revperiod`,`ri`.`revtype` AS `revtype`,`ri`.`year` AS `year`,`ri`.`qtr` AS `qtr`,`ri`.`amount` AS `amount`,`ri`.`interest` AS `interest`,`ri`.`discount` AS `discount`,`pc`.`name` AS `classname`,`pc`.`orderno` AS `orderno`,`pc`.`special` AS `special`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'basic')) then `ri`.`amount` else 0.0 end) AS `basiccurrent`,(case when (`ri`.`revtype` = 'basic') then `ri`.`discount` else 0.0 end) AS `basicdisc`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'basic')) then `ri`.`amount` else 0.0 end) AS `basicprev`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'basic')) then `ri`.`interest` else 0.0 end) AS `basiccurrentint`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'basic')) then `ri`.`interest` else 0.0 end) AS `basicprevint`,(case when (`ri`.`revtype` = 'basic') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `basicnet`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'sef')) then `ri`.`amount` else 0.0 end) AS `sefcurrent`,(case when (`ri`.`revtype` = 'sef') then `ri`.`discount` else 0.0 end) AS `sefdisc`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'sef')) then `ri`.`amount` else 0.0 end) AS `sefprev`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'sef')) then `ri`.`interest` else 0.0 end) AS `sefcurrentint`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'sef')) then `ri`.`interest` else 0.0 end) AS `sefprevint`,(case when (`ri`.`revtype` = 'sef') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `sefnet`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'basicidle')) then `ri`.`amount` else 0.0 end) AS `idlecurrent`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'basicidle')) then `ri`.`amount` else 0.0 end) AS `idleprev`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`discount` else 0.0 end) AS `idledisc`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`interest` else 0 end) AS `idleint`,(case when (`ri`.`revtype` = 'basicidle') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `idlenet`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'sh')) then `ri`.`amount` else 0.0 end) AS `shcurrent`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'sh')) then `ri`.`amount` else 0.0 end) AS `shprev`,(case when (`ri`.`revtype` = 'sh') then `ri`.`discount` else 0.0 end) AS `shdisc`,(case when (`ri`.`revtype` = 'sh') then `ri`.`interest` else 0 end) AS `shint`,(case when (`ri`.`revtype` = 'sh') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `shnet`,(case when (`ri`.`revtype` = 'firecode') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `firecode`,0.0 AS `levynet`,(case when isnull(`crv`.`objid`) then 0 else 1 end) AS `voided` from (((((((((`remittance` `rem` join `collectionvoucher` `cv` on((`cv`.`objid` = `rem`.`collectionvoucherid`))) join `cashreceipt` `cr` on((`cr`.`remittanceid` = `rem`.`objid`))) left join `cashreceipt_void` `crv` on((`cr`.`objid` = `crv`.`receiptid`))) join `rptpayment` `rp` on((`cr`.`objid` = `rp`.`receiptid`))) join `rptpayment_item` `ri` on((`rp`.`objid` = `ri`.`parentid`))) left join `rptledger` `rl` on((`rp`.`refid` = `rl`.`objid`))) left join `barangay` `b` on((`rl`.`barangayid` = `b`.`objid`))) left join `sys_org` `o` on((`rl`.`lguid` = `o`.`objid`))) left join `propertyclassification` `pc` on((`rl`.`classification_objid` = `pc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_collection_detail_eor`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_collection_detail_eor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_collection_detail_eor` AS select `rem`.`objid` AS `liquidationid`,`rem`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controldate` AS `remittancedate`,`eor`.`receiptdate` AS `receiptdate`,`o`.`objid` AS `lguid`,`o`.`name` AS `lgu`,`b`.`objid` AS `barangayid`,`b`.`indexno` AS `brgyindex`,`b`.`name` AS `barangay`,`ri`.`revperiod` AS `revperiod`,`ri`.`revtype` AS `revtype`,`ri`.`year` AS `year`,`ri`.`qtr` AS `qtr`,`ri`.`amount` AS `amount`,`ri`.`interest` AS `interest`,`ri`.`discount` AS `discount`,`pc`.`name` AS `classname`,`pc`.`orderno` AS `orderno`,`pc`.`special` AS `special`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'basic')) then `ri`.`amount` else 0.0 end) AS `basiccurrent`,(case when (`ri`.`revtype` = 'basic') then `ri`.`discount` else 0.0 end) AS `basicdisc`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'basic')) then `ri`.`amount` else 0.0 end) AS `basicprev`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'basic')) then `ri`.`interest` else 0.0 end) AS `basiccurrentint`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'basic')) then `ri`.`interest` else 0.0 end) AS `basicprevint`,(case when (`ri`.`revtype` = 'basic') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `basicnet`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'sef')) then `ri`.`amount` else 0.0 end) AS `sefcurrent`,(case when (`ri`.`revtype` = 'sef') then `ri`.`discount` else 0.0 end) AS `sefdisc`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'sef')) then `ri`.`amount` else 0.0 end) AS `sefprev`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'sef')) then `ri`.`interest` else 0.0 end) AS `sefcurrentint`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'sef')) then `ri`.`interest` else 0.0 end) AS `sefprevint`,(case when (`ri`.`revtype` = 'sef') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `sefnet`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'basicidle')) then `ri`.`amount` else 0.0 end) AS `idlecurrent`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'basicidle')) then `ri`.`amount` else 0.0 end) AS `idleprev`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`discount` else 0.0 end) AS `idledisc`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`interest` else 0 end) AS `idleint`,(case when (`ri`.`revtype` = 'basicidle') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `idlenet`,(case when ((`ri`.`revperiod` = 'current') and (`ri`.`revtype` = 'sh')) then `ri`.`amount` else 0.0 end) AS `shcurrent`,(case when ((`ri`.`revperiod` in ('previous','prior')) and (`ri`.`revtype` = 'sh')) then `ri`.`amount` else 0.0 end) AS `shprev`,(case when (`ri`.`revtype` = 'sh') then `ri`.`discount` else 0.0 end) AS `shdisc`,(case when (`ri`.`revtype` = 'sh') then `ri`.`interest` else 0 end) AS `shint`,(case when (`ri`.`revtype` = 'sh') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `shnet`,(case when (`ri`.`revtype` = 'firecode') then ((`ri`.`amount` - `ri`.`discount`) + `ri`.`interest`) else 0 end) AS `firecode`,0.0 AS `levynet` from (((((((`vw_landtax_eor_remittance` `rem` join `vw_landtax_eor` `eor` on((`rem`.`objid` = `eor`.`remittanceid`))) join `rptpayment` `rp` on((`eor`.`objid` = `rp`.`receiptid`))) join `rptpayment_item` `ri` on((`rp`.`objid` = `ri`.`parentid`))) left join `rptledger` `rl` on((`rp`.`refid` = `rl`.`objid`))) left join `barangay` `b` on((`rl`.`barangayid` = `b`.`objid`))) left join `sys_org` `o` on((`rl`.`lguid` = `o`.`objid`))) left join `propertyclassification` `pc` on((`rl`.`classification_objid` = `pc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_collection_disposition_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_collection_disposition_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_collection_disposition_detail` AS select `cv`.`objid` AS `liquidationid`,`cv`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controldate` AS `remittancedate`,`cr`.`receiptdate` AS `receiptdate`,`ri`.`revperiod` AS `revperiod`,(case when ((`ri`.`revtype` in ('basic','basicint','basicidle','basicidleint')) and (`ri`.`sharetype` in ('province','city'))) then `ri`.`amount` else 0.0 end) AS `provcitybasicshare`,(case when ((`ri`.`revtype` in ('basic','basicint','basicidle','basicidleint')) and (`ri`.`sharetype` = 'municipality')) then `ri`.`amount` else 0.0 end) AS `munibasicshare`,(case when ((`ri`.`revtype` in ('basic','basicint')) and (`ri`.`sharetype` = 'barangay')) then `ri`.`amount` else 0.0 end) AS `brgybasicshare`,(case when ((`ri`.`revtype` in ('sef','sefint')) and (`ri`.`sharetype` in ('province','city'))) then `ri`.`amount` else 0.0 end) AS `provcitysefshare`,(case when ((`ri`.`revtype` in ('sef','sefint')) and (`ri`.`sharetype` = 'municipality')) then `ri`.`amount` else 0.0 end) AS `munisefshare`,0.0 AS `brgysefshare`,(case when isnull(`crv`.`objid`) then 0 else 1 end) AS `voided` from (((((`remittance` `rem` join `collectionvoucher` `cv` on((`cv`.`objid` = `rem`.`collectionvoucherid`))) join `cashreceipt` `cr` on((`cr`.`remittanceid` = `rem`.`objid`))) left join `cashreceipt_void` `crv` on((`cr`.`objid` = `crv`.`receiptid`))) join `rptpayment` `rp` on((`cr`.`objid` = `rp`.`receiptid`))) join `rptpayment_share` `ri` on((`rp`.`objid` = `ri`.`parentid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_collection_disposition_detail_eor`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_collection_disposition_detail_eor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_collection_disposition_detail_eor` AS select `rem`.`objid` AS `liquidationid`,`rem`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controldate` AS `remittancedate`,`eor`.`receiptdate` AS `receiptdate`,`ri`.`revperiod` AS `revperiod`,(case when ((`ri`.`revtype` in ('basic','basicint','basicidle','basicidleint')) and (`ri`.`sharetype` in ('province','city'))) then `ri`.`amount` else 0.0 end) AS `provcitybasicshare`,(case when ((`ri`.`revtype` in ('basic','basicint','basicidle','basicidleint')) and (`ri`.`sharetype` = 'municipality')) then `ri`.`amount` else 0.0 end) AS `munibasicshare`,(case when ((`ri`.`revtype` in ('basic','basicint')) and (`ri`.`sharetype` = 'barangay')) then `ri`.`amount` else 0.0 end) AS `brgybasicshare`,(case when ((`ri`.`revtype` in ('sef','sefint')) and (`ri`.`sharetype` in ('province','city'))) then `ri`.`amount` else 0.0 end) AS `provcitysefshare`,(case when ((`ri`.`revtype` in ('sef','sefint')) and (`ri`.`sharetype` = 'municipality')) then `ri`.`amount` else 0.0 end) AS `munisefshare`,0.0 AS `brgysefshare` from (((`vw_landtax_eor_remittance` `rem` join `vw_landtax_eor` `eor` on((`rem`.`objid` = `eor`.`remittanceid`))) join `rptpayment` `rp` on((`eor`.`objid` = `rp`.`receiptid`))) join `rptpayment_share` `ri` on((`rp`.`objid` = `ri`.`parentid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_collection_share_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_collection_share_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_collection_share_detail` AS select `cv`.`objid` AS `liquidationid`,`cv`.`controlno` AS `liquidationno`,`cv`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controlno` AS `remittanceno`,`rem`.`controldate` AS `remittancedate`,`cr`.`objid` AS `receiptid`,`cr`.`receiptno` AS `receiptno`,`cr`.`receiptdate` AS `receiptdate`,`cr`.`txndate` AS `txndate`,`o`.`name` AS `lgu`,`b`.`objid` AS `barangayid`,`b`.`name` AS `barangay`,`cra`.`revtype` AS `revtype`,`cra`.`revperiod` AS `revperiod`,`cra`.`sharetype` AS `sharetype`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic')) then `cra`.`amount` else 0 end) AS `brgycurr`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic')) then `cra`.`amount` else 0 end) AS `brgyprev`,(case when (`cra`.`revtype` = 'basicint') then `cra`.`amount` else 0 end) AS `brgypenalty`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'barangay')) then `cra`.`amount` else 0 end) AS `brgycurrshare`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'barangay')) then `cra`.`amount` else 0 end) AS `brgyprevshare`,(case when ((`cra`.`revtype` = 'basicint') and (`cra`.`sharetype` = 'barangay')) then `cra`.`amount` else 0 end) AS `brgypenaltyshare`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'city')) then `cra`.`amount` else 0 end) AS `citycurrshare`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'city')) then `cra`.`amount` else 0 end) AS `cityprevshare`,(case when ((`cra`.`revtype` = 'basicint') and (`cra`.`sharetype` = 'city')) then `cra`.`amount` else 0 end) AS `citypenaltyshare`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` in ('province','municipality'))) then `cra`.`amount` else 0 end) AS `provmunicurrshare`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` in ('province','municipality'))) then `cra`.`amount` else 0 end) AS `provmuniprevshare`,(case when ((`cra`.`revtype` = 'basicint') and (`cra`.`sharetype` in ('province','municipality'))) then `cra`.`amount` else 0 end) AS `provmunipenaltyshare`,`cra`.`amount` AS `amount`,`cra`.`discount` AS `discount`,(case when isnull(`crv`.`objid`) then 0 else 1 end) AS `voided` from ((((((((`remittance` `rem` join `collectionvoucher` `cv` on((`cv`.`objid` = `rem`.`collectionvoucherid`))) join `cashreceipt` `cr` on((`cr`.`remittanceid` = `rem`.`objid`))) join `rptpayment` `rp` on((`cr`.`objid` = `rp`.`receiptid`))) join `rptpayment_share` `cra` on((`rp`.`objid` = `cra`.`parentid`))) left join `rptledger` `rl` on((`rp`.`refid` = `rl`.`objid`))) left join `sys_org` `o` on((`rl`.`lguid` = `o`.`objid`))) left join `barangay` `b` on((`rl`.`barangayid` = `b`.`objid`))) left join `cashreceipt_void` `crv` on((`cr`.`objid` = `crv`.`receiptid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_collection_share_detail_eor`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_collection_share_detail_eor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_collection_share_detail_eor` AS select `rem`.`objid` AS `liquidationid`,`rem`.`controlno` AS `liquidationno`,`rem`.`controldate` AS `liquidationdate`,`rem`.`objid` AS `remittanceid`,`rem`.`controlno` AS `remittanceno`,`rem`.`controldate` AS `remittancedate`,`eor`.`objid` AS `receiptid`,`eor`.`receiptno` AS `receiptno`,`eor`.`receiptdate` AS `receiptdate`,`eor`.`txndate` AS `txndate`,`o`.`name` AS `lgu`,`b`.`objid` AS `barangayid`,`b`.`name` AS `barangay`,`cra`.`revtype` AS `revtype`,`cra`.`revperiod` AS `revperiod`,`cra`.`sharetype` AS `sharetype`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic')) then `cra`.`amount` else 0 end) AS `brgycurr`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic')) then `cra`.`amount` else 0 end) AS `brgyprev`,(case when (`cra`.`revtype` = 'basicint') then `cra`.`amount` else 0 end) AS `brgypenalty`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'barangay')) then `cra`.`amount` else 0 end) AS `brgycurrshare`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'barangay')) then `cra`.`amount` else 0 end) AS `brgyprevshare`,(case when ((`cra`.`revtype` = 'basicint') and (`cra`.`sharetype` = 'barangay')) then `cra`.`amount` else 0 end) AS `brgypenaltyshare`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'city')) then `cra`.`amount` else 0 end) AS `citycurrshare`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` = 'city')) then `cra`.`amount` else 0 end) AS `cityprevshare`,(case when ((`cra`.`revtype` = 'basicint') and (`cra`.`sharetype` = 'city')) then `cra`.`amount` else 0 end) AS `citypenaltyshare`,(case when ((`cra`.`revperiod` = 'current') and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` in ('province','municipality'))) then `cra`.`amount` else 0 end) AS `provmunicurrshare`,(case when ((`cra`.`revperiod` in ('previous','prior')) and (`cra`.`revtype` = 'basic') and (`cra`.`sharetype` in ('province','municipality'))) then `cra`.`amount` else 0 end) AS `provmuniprevshare`,(case when ((`cra`.`revtype` = 'basicint') and (`cra`.`sharetype` in ('province','municipality'))) then `cra`.`amount` else 0 end) AS `provmunipenaltyshare`,`cra`.`amount` AS `amount`,`cra`.`discount` AS `discount` from (((((((`vw_landtax_eor_remittance` `rem` join `vw_landtax_eor` `eor` on((`rem`.`objid` = `eor`.`remittanceid`))) join `rptpayment` `rp` on((`eor`.`objid` = `rp`.`receiptid`))) join `rptpayment_share` `cra` on((`rp`.`objid` = `cra`.`parentid`))) left join `rptledger` `rl` on((`rp`.`refid` = `rl`.`objid`))) left join `sys_org` `o` on((`rl`.`lguid` = `o`.`objid`))) left join `barangay` `b` on((`rl`.`barangayid` = `b`.`objid`))) left join `cashreceipt_void` `crv` on((`eor`.`objid` = `crv`.`receiptid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_eor`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_eor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_eor` AS select `training_eor`.`eor`.`objid` AS `objid`,`training_eor`.`eor`.`receiptno` AS `receiptno`,`training_eor`.`eor`.`receiptdate` AS `receiptdate`,`training_eor`.`eor`.`txndate` AS `txndate`,`training_eor`.`eor`.`state` AS `state`,`training_eor`.`eor`.`partnerid` AS `partnerid`,`training_eor`.`eor`.`txntype` AS `txntype`,`training_eor`.`eor`.`traceid` AS `traceid`,`training_eor`.`eor`.`tracedate` AS `tracedate`,`training_eor`.`eor`.`refid` AS `refid`,`training_eor`.`eor`.`paidby` AS `paidby`,`training_eor`.`eor`.`paidbyaddress` AS `paidbyaddress`,`training_eor`.`eor`.`payer_objid` AS `payer_objid`,`training_eor`.`eor`.`paymethod` AS `paymethod`,`training_eor`.`eor`.`paymentrefid` AS `paymentrefid`,`training_eor`.`eor`.`remittanceid` AS `remittanceid`,`training_eor`.`eor`.`remarks` AS `remarks`,`training_eor`.`eor`.`amount` AS `amount`,`training_eor`.`eor`.`lockid` AS `lockid` from `training_eor`.`eor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_eor_remittance`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_eor_remittance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_eor_remittance` AS select `training_eor`.`eor_remittance`.`objid` AS `objid`,`training_eor`.`eor_remittance`.`state` AS `state`,`training_eor`.`eor_remittance`.`controlno` AS `controlno`,`training_eor`.`eor_remittance`.`partnerid` AS `partnerid`,`training_eor`.`eor_remittance`.`controldate` AS `controldate`,`training_eor`.`eor_remittance`.`dtcreated` AS `dtcreated`,`training_eor`.`eor_remittance`.`createdby_objid` AS `createdby_objid`,`training_eor`.`eor_remittance`.`createdby_name` AS `createdby_name`,`training_eor`.`eor_remittance`.`amount` AS `amount`,`training_eor`.`eor_remittance`.`dtposted` AS `dtposted`,`training_eor`.`eor_remittance`.`postedby_objid` AS `postedby_objid`,`training_eor`.`eor_remittance`.`postedby_name` AS `postedby_name`,`training_eor`.`eor_remittance`.`lockid` AS `lockid` from `training_eor`.`eor_remittance` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_lgu_account_mapping`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_lgu_account_mapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_lgu_account_mapping` AS select `ia`.`org_objid` AS `org_objid`,`ia`.`org_name` AS `org_name`,`o`.`orgclass` AS `org_class`,`p`.`objid` AS `parent_objid`,`p`.`code` AS `parent_code`,`p`.`title` AS `parent_title`,`ia`.`objid` AS `item_objid`,`ia`.`code` AS `item_code`,`ia`.`title` AS `item_title`,`ia`.`fund_objid` AS `item_fund_objid`,`ia`.`fund_code` AS `item_fund_code`,`ia`.`fund_title` AS `item_fund_title`,`ia`.`type` AS `item_type`,`pt`.`tag` AS `item_tag` from (((`itemaccount` `ia` join `itemaccount` `p` on((`ia`.`parentid` = `p`.`objid`))) join `itemaccount_tag` `pt` on((`p`.`objid` = `pt`.`acctid`))) join `sys_org` `o` on((`ia`.`org_objid` = `o`.`objid`))) where (`p`.`state` = 'ACTIVE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_report_rptdelinquency`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_report_rptdelinquency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_report_rptdelinquency` AS select `ri`.`objid` AS `objid`,`ri`.`rptledgerid` AS `rptledgerid`,`ri`.`barangayid` AS `barangayid`,`ri`.`year` AS `year`,`ri`.`qtr` AS `qtr`,`r`.`dtgenerated` AS `dtgenerated`,`r`.`dtcomputed` AS `dtcomputed`,`r`.`generatedby_name` AS `generatedby_name`,`r`.`generatedby_title` AS `generatedby_title`,(case when (`ri`.`revtype` = 'basic') then `ri`.`amount` else 0 end) AS `basic`,(case when (`ri`.`revtype` = 'basic') then `ri`.`interest` else 0 end) AS `basicint`,(case when (`ri`.`revtype` = 'basic') then `ri`.`discount` else 0 end) AS `basicdisc`,(case when (`ri`.`revtype` = 'basic') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `basicdp`,(case when (`ri`.`revtype` = 'basic') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `basicnet`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`amount` else 0 end) AS `basicidle`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`interest` else 0 end) AS `basicidleint`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`discount` else 0 end) AS `basicidledisc`,(case when (`ri`.`revtype` = 'basicidle') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `basicidledp`,(case when (`ri`.`revtype` = 'basicidle') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `basicidlenet`,(case when (`ri`.`revtype` = 'sef') then `ri`.`amount` else 0 end) AS `sef`,(case when (`ri`.`revtype` = 'sef') then `ri`.`interest` else 0 end) AS `sefint`,(case when (`ri`.`revtype` = 'sef') then `ri`.`discount` else 0 end) AS `sefdisc`,(case when (`ri`.`revtype` = 'sef') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `sefdp`,(case when (`ri`.`revtype` = 'sef') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `sefnet`,(case when (`ri`.`revtype` = 'firecode') then `ri`.`amount` else 0 end) AS `firecode`,(case when (`ri`.`revtype` = 'firecode') then `ri`.`interest` else 0 end) AS `firecodeint`,(case when (`ri`.`revtype` = 'firecode') then `ri`.`discount` else 0 end) AS `firecodedisc`,(case when (`ri`.`revtype` = 'firecode') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `firecodedp`,(case when (`ri`.`revtype` = 'firecode') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `firecodenet`,(case when (`ri`.`revtype` = 'sh') then `ri`.`amount` else 0 end) AS `sh`,(case when (`ri`.`revtype` = 'sh') then `ri`.`interest` else 0 end) AS `shint`,(case when (`ri`.`revtype` = 'sh') then `ri`.`discount` else 0 end) AS `shdisc`,(case when (`ri`.`revtype` = 'sh') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `shdp`,(case when (`ri`.`revtype` = 'sh') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `shnet`,((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) AS `total` from (`report_rptdelinquency_item` `ri` join `report_rptdelinquency` `r` on((`ri`.`parentid` = `r`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_landtax_report_rptdelinquency_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_landtax_report_rptdelinquency_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_landtax_report_rptdelinquency_detail` AS select `r`.`objid` AS `parentid`,`ri`.`objid` AS `objid`,`ri`.`rptledgerid` AS `rptledgerid`,`ri`.`barangayid` AS `barangayid`,`ri`.`year` AS `year`,`ri`.`qtr` AS `qtr`,`r`.`dtgenerated` AS `dtgenerated`,`r`.`dtcomputed` AS `dtcomputed`,`r`.`generatedby_name` AS `generatedby_name`,`r`.`generatedby_title` AS `generatedby_title`,(case when (`ri`.`revtype` = 'basic') then `ri`.`amount` else 0 end) AS `basic`,(case when (`ri`.`revtype` = 'basic') then `ri`.`interest` else 0 end) AS `basicint`,(case when (`ri`.`revtype` = 'basic') then `ri`.`discount` else 0 end) AS `basicdisc`,(case when (`ri`.`revtype` = 'basic') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `basicdp`,(case when (`ri`.`revtype` = 'basic') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `basicnet`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`amount` else 0 end) AS `basicidle`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`interest` else 0 end) AS `basicidleint`,(case when (`ri`.`revtype` = 'basicidle') then `ri`.`discount` else 0 end) AS `basicidledisc`,(case when (`ri`.`revtype` = 'basicidle') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `basicidledp`,(case when (`ri`.`revtype` = 'basicidle') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `basicidlenet`,(case when (`ri`.`revtype` = 'sef') then `ri`.`amount` else 0 end) AS `sef`,(case when (`ri`.`revtype` = 'sef') then `ri`.`interest` else 0 end) AS `sefint`,(case when (`ri`.`revtype` = 'sef') then `ri`.`discount` else 0 end) AS `sefdisc`,(case when (`ri`.`revtype` = 'sef') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `sefdp`,(case when (`ri`.`revtype` = 'sef') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `sefnet`,(case when (`ri`.`revtype` = 'firecode') then `ri`.`amount` else 0 end) AS `firecode`,(case when (`ri`.`revtype` = 'firecode') then `ri`.`interest` else 0 end) AS `firecodeint`,(case when (`ri`.`revtype` = 'firecode') then `ri`.`discount` else 0 end) AS `firecodedisc`,(case when (`ri`.`revtype` = 'firecode') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `firecodedp`,(case when (`ri`.`revtype` = 'firecode') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `firecodenet`,(case when (`ri`.`revtype` = 'sh') then `ri`.`amount` else 0 end) AS `sh`,(case when (`ri`.`revtype` = 'sh') then `ri`.`interest` else 0 end) AS `shint`,(case when (`ri`.`revtype` = 'sh') then `ri`.`discount` else 0 end) AS `shdisc`,(case when (`ri`.`revtype` = 'sh') then (`ri`.`interest` - `ri`.`discount`) else 0 end) AS `shdp`,(case when (`ri`.`revtype` = 'sh') then ((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) else 0 end) AS `shnet`,((`ri`.`amount` + `ri`.`interest`) - `ri`.`discount`) AS `total` from (`report_rptdelinquency_item` `ri` join `report_rptdelinquency` `r` on((`ri`.`parentid` = `r`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_lob`
--

/*!50001 DROP VIEW IF EXISTS `vw_lob`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lob` AS select `lob`.`objid` AS `objid`,`lob`.`state` AS `state`,`lob`.`name` AS `name`,`lob`.`classification_objid` AS `classification_objid`,`lc`.`name` AS `classification_name`,`lob`.`psicid` AS `psicid`,`sc`.`code` AS `psic_code`,`sc`.`description` AS `psic_description`,`sc`.`class_code` AS `psic_class_code`,`sc`.`class_description` AS `psic_class_description`,`sc`.`group_code` AS `psic_group_code`,`sc`.`group_description` AS `psic_group_description`,`sc`.`division_code` AS `psic_division_code`,`sc`.`division_description` AS `psic_division_description`,`sc`.`section_code` AS `psic_section_code`,`sc`.`section_description` AS `psic_section_description` from ((`lob` join `lobclassification` `lc` on((`lc`.`objid` = `lob`.`classification_objid`))) left join `vw_psic_subclass` `sc` on((`sc`.`code` = `lob`.`psicid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_machine_smv`
--

/*!50001 DROP VIEW IF EXISTS `vw_machine_smv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_machine_smv` AS select `ms`.`objid` AS `objid`,`ms`.`parent_objid` AS `parent_objid`,`ms`.`machine_objid` AS `machine_objid`,`ms`.`expr` AS `expr`,`ms`.`previd` AS `previd`,`m`.`code` AS `code`,`m`.`name` AS `name` from (`machine_smv` `ms` join `machine` `m` on((`ms`.`machine_objid` = `m`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_machinery`
--

/*!50001 DROP VIEW IF EXISTS `vw_machinery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_machinery` AS select `f`.`objid` AS `objid`,`f`.`state` AS `state`,`f`.`rpuid` AS `rpuid`,`f`.`realpropertyid` AS `realpropertyid`,`f`.`tdno` AS `tdno`,`f`.`fullpin` AS `fullpin`,`f`.`taxpayer_objid` AS `taxpayer_objid`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`administrator_name` AS `administrator_name`,`f`.`administrator_address` AS `administrator_address`,`f`.`lguid` AS `lgu_objid`,`o`.`name` AS `lgu_name`,`b`.`objid` AS `barangay_objid`,`b`.`name` AS `barangay_name`,`r`.`classification_objid` AS `classification_objid`,`pc`.`name` AS `classification_name`,`rp`.`pin` AS `pin`,`rp`.`section` AS `section`,`rp`.`ry` AS `ry`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`surveyno` AS `surveyno`,`m`.`objid` AS `machine_objid`,`m`.`name` AS `machine_name`,`mu`.`basemarketvalue` AS `basemarketvalue`,`mu`.`marketvalue` AS `marketvalue`,`mu`.`assessedvalue` AS `assessedvalue`,`al`.`objid` AS `actualuse_objid`,`al`.`name` AS `actualuse_name`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav` from (((((((((`faas` `f` join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `machuse` `mu` on((`r`.`objid` = `mu`.`machrpuid`))) join `machdetail` `md` on((`mu`.`objid` = `md`.`machuseid`))) join `machine` `m` on((`md`.`machine_objid` = `m`.`objid`))) join `machassesslevel` `al` on((`mu`.`actualuse_objid` = `al`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_newly_assessed_property`
--

/*!50001 DROP VIEW IF EXISTS `vw_newly_assessed_property`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_newly_assessed_property` AS select `f`.`objid` AS `objid`,`f`.`owner_name` AS `owner_name`,`f`.`tdno` AS `tdno`,`b`.`name` AS `barangay`,(case when (`f`.`rputype` = 'land') then 'LAND' when (`f`.`rputype` = 'bldg') then 'BUILDING' when (`f`.`rputype` = 'mach') then 'MACHINERY' when (`f`.`rputype` = 'planttree') then 'PLANT/TREE' else 'MISCELLANEOUS' end) AS `rputype`,`f`.`totalav` AS `totalav`,`f`.`effectivityyear` AS `effectivityyear` from (`faas_list` `f` join `barangay` `b` on((`f`.`barangayid` = `b`.`objid`))) where ((`f`.`state` in ('CURRENT','CANCELLED')) and (`f`.`txntype_objid` = 'ND')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_ocular_inspection`
--

/*!50001 DROP VIEW IF EXISTS `vw_ocular_inspection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ocular_inspection` AS select `ef`.`objid` AS `objid`,`ef`.`findings` AS `findings`,`ef`.`parent_objid` AS `parent_objid`,`ef`.`dtinspected` AS `dtinspected`,`ef`.`inspectors` AS `inspectors`,`ef`.`notedby` AS `notedby`,`ef`.`notedbytitle` AS `notedbytitle`,`ef`.`photos` AS `photos`,`ef`.`recommendations` AS `recommendations`,`ef`.`inspectedby_objid` AS `inspectedby_objid`,`ef`.`inspectedby_name` AS `inspectedby_name`,`ef`.`inspectedby_title` AS `inspectedby_title`,`ef`.`doctype` AS `doctype`,`ef`.`txnno` AS `txnno`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`titleno` AS `titleno`,`f`.`fullpin` AS `fullpin`,`rp`.`blockno` AS `blockno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`f`.`lguid` AS `lguid`,`o`.`name` AS `lgu_name`,`rp`.`barangayid` AS `barangayid`,`b`.`name` AS `barangay_name`,`b`.`objid` AS `barangay_parentid`,`rp`.`purok` AS `purok`,`rp`.`street` AS `street` from (((((`examiner_finding` `ef` join `faas` `f` on((`ef`.`parent_objid` = `f`.`objid`))) join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `sys_org` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) union all select `ef`.`objid` AS `objid`,`ef`.`findings` AS `findings`,`ef`.`parent_objid` AS `parent_objid`,`ef`.`dtinspected` AS `dtinspected`,`ef`.`inspectors` AS `inspectors`,`ef`.`notedby` AS `notedby`,`ef`.`notedbytitle` AS `notedbytitle`,`ef`.`photos` AS `photos`,`ef`.`recommendations` AS `recommendations`,`ef`.`inspectedby_objid` AS `inspectedby_objid`,`ef`.`inspectedby_name` AS `inspectedby_name`,`ef`.`inspectedby_title` AS `inspectedby_title`,`ef`.`doctype` AS `doctype`,`ef`.`txnno` AS `txnno`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`titleno` AS `titleno`,`f`.`fullpin` AS `fullpin`,`rp`.`blockno` AS `blockno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`f`.`lguid` AS `lguid`,`o`.`name` AS `lgu_name`,`rp`.`barangayid` AS `barangayid`,`b`.`name` AS `barangay_name`,`b`.`parent_objid` AS `barangay_parentid`,`rp`.`purok` AS `purok`,`rp`.`street` AS `street` from ((((((`examiner_finding` `ef` left join `subdivision_motherland` `sm` on((`ef`.`parent_objid` = `sm`.`subdivisionid`))) left join `faas` `f` on((`sm`.`landfaasid` = `f`.`objid`))) left join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) left join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) left join `sys_org` `b` on((`rp`.`barangayid` = `b`.`objid`))) left join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) union all select `ef`.`objid` AS `objid`,`ef`.`findings` AS `findings`,`ef`.`parent_objid` AS `parent_objid`,`ef`.`dtinspected` AS `dtinspected`,`ef`.`inspectors` AS `inspectors`,`ef`.`notedby` AS `notedby`,`ef`.`notedbytitle` AS `notedbytitle`,`ef`.`photos` AS `photos`,`ef`.`recommendations` AS `recommendations`,`ef`.`inspectedby_objid` AS `inspectedby_objid`,`ef`.`inspectedby_name` AS `inspectedby_name`,`ef`.`inspectedby_title` AS `inspectedby_title`,`ef`.`doctype` AS `doctype`,`ef`.`txnno` AS `txnno`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`titleno` AS `titleno`,`f`.`fullpin` AS `fullpin`,`rp`.`blockno` AS `blockno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`f`.`lguid` AS `lguid`,`o`.`name` AS `lgu_name`,`rp`.`barangayid` AS `barangayid`,`b`.`name` AS `barangay_name`,`b`.`parent_objid` AS `barangay_parentid`,`rp`.`purok` AS `purok`,`rp`.`street` AS `street` from ((((((`examiner_finding` `ef` join `consolidation` `c` on((`ef`.`parent_objid` = `c`.`objid`))) left join `faas` `f` on((`c`.`newfaasid` = `f`.`objid`))) left join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) left join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) left join `sys_org` `b` on((`rp`.`barangayid` = `b`.`objid`))) left join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) union all select `ef`.`objid` AS `objid`,`ef`.`findings` AS `findings`,`ef`.`parent_objid` AS `parent_objid`,`ef`.`dtinspected` AS `dtinspected`,`ef`.`inspectors` AS `inspectors`,`ef`.`notedby` AS `notedby`,`ef`.`notedbytitle` AS `notedbytitle`,`ef`.`photos` AS `photos`,`ef`.`recommendations` AS `recommendations`,`ef`.`inspectedby_objid` AS `inspectedby_objid`,`ef`.`inspectedby_name` AS `inspectedby_name`,`ef`.`inspectedby_title` AS `inspectedby_title`,`ef`.`doctype` AS `doctype`,`ef`.`txnno` AS `txnno`,'\r\n  ' AS `owner_name`,'\r\n  ' AS `owner_address`,'\r\n  ' AS `titleno`,'\r\n  ' AS `fullpin`,'\r\n  ' AS `blockno`,'\r\n  ' AS `cadastrallotno`,0 AS `totalareaha`,0 AS `totalareasqm`,0 AS `totalmv`,0 AS `totalav`,`o`.`objid` AS `lguid`,`o`.`name` AS `lgu_name`,`b`.`objid` AS `barangayid`,`b`.`name` AS `barangay_name`,`b`.`parent_objid` AS `barangay_parentid`,'\r\n  ' AS `purok`,'\r\n  ' AS `street` from (((`examiner_finding` `ef` join `batchgr` `bgr` on((`ef`.`parent_objid` = `bgr`.`objid`))) join `sys_org` `b` on((`bgr`.`barangay_objid` = `b`.`objid`))) join `sys_org` `o` on((`bgr`.`lgu_objid` = `o`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_real_property_payment`
--

/*!50001 DROP VIEW IF EXISTS `vw_real_property_payment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_real_property_payment` AS select `cv`.`controldate` AS `cv_controldate`,`rem`.`controldate` AS `rem_controldate`,`rl`.`owner_name` AS `owner_name`,`rl`.`tdno` AS `tdno`,`pc`.`name` AS `classification`,(case when (`rl`.`rputype` = 'land') then 'LAND' when (`rl`.`rputype` = 'bldg') then 'BUILDING' when (`rl`.`rputype` = 'mach') then 'MACHINERY' when (`rl`.`rputype` = 'planttree') then 'PLANT/TREE' else 'MISCELLANEOUS' end) AS `rputype`,`b`.`name` AS `barangay`,`rpi`.`year` AS `year`,`rpi`.`qtr` AS `qtr`,((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) AS `amount`,(case when isnull(`v`.`objid`) then 0 else 1 end) AS `voided` from ((((((((`collectionvoucher` `cv` join `remittance` `rem` on((`cv`.`objid` = `rem`.`collectionvoucherid`))) join `cashreceipt` `cr` on((`rem`.`objid` = `cr`.`remittanceid`))) join `rptpayment` `rp` on((`cr`.`objid` = `rp`.`receiptid`))) join `rptpayment_item` `rpi` on((`rp`.`objid` = `rpi`.`parentid`))) join `rptledger` `rl` on((`rp`.`refid` = `rl`.`objid`))) join `barangay` `b` on((`rl`.`barangayid` = `b`.`objid`))) join `propertyclassification` `pc` on((`rl`.`classification_objid` = `pc`.`objid`))) left join `cashreceipt_void` `v` on((`cr`.`objid` = `v`.`receiptid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_report_consolidated_land`
--

/*!50001 DROP VIEW IF EXISTS `vw_report_consolidated_land`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_consolidated_land` AS select `cl`.`consolidationid` AS `consolidationid`,`f`.`tdno` AS `tdno`,`f`.`owner_name` AS `owner_name`,`b`.`name` AS `barangay`,`o`.`name` AS `lguname`,`f`.`titleno` AS `titleno`,`f`.`fullpin` AS `fullpin`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`surveyno` AS `surveyno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`rputype` AS `rputype`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`r`.`taxable` AS `taxable`,`f`.`administrator_name` AS `administrator_name`,`f`.`txntype_objid` AS `txntype_objid`,`pc`.`code` AS `classcode`,`ft`.`displaycode` AS `txntype_code`,`e`.`name` AS `taxpayer_name` from ((((((((`consolidatedland` `cl` join `faas` `f` on((`cl`.`landfaasid` = `f`.`objid`))) join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `faas_txntype` `ft` on((`f`.`txntype_objid` = `ft`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_report_consolidation`
--

/*!50001 DROP VIEW IF EXISTS `vw_report_consolidation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_consolidation` AS select `c`.`objid` AS `objid`,`c`.`txnno` AS `txnno`,`b`.`name` AS `barangay`,`o`.`name` AS `lguname`,`f`.`tdno` AS `tdno`,`f`.`owner_name` AS `owner_name`,`f`.`administrator_name` AS `administrator_name`,`f`.`titleno` AS `titleno`,`f`.`fullpin` AS `fullpin`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`surveyno` AS `surveyno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`rputype` AS `rputype`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`f`.`txntype_objid` AS `txntype_objid`,`pc`.`code` AS `classcode`,`ft`.`displaycode` AS `txntype_code`,`e`.`name` AS `taxpayer_name` from ((((((((`consolidation` `c` join `faas` `f` on((`c`.`newfaasid` = `f`.`objid`))) join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `faas_txntype` `ft` on((`f`.`txntype_objid` = `ft`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_report_landrpu`
--

/*!50001 DROP VIEW IF EXISTS `vw_report_landrpu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_landrpu` AS select `f`.`objid` AS `objid`,`f`.`state` AS `state`,`o`.`name` AS `lgu`,`b`.`name` AS `barangay`,`f`.`tdno` AS `tdno`,`f`.`fullpin` AS `pin`,`f`.`titleno` AS `titleno`,`f`.`dtapproved` AS `dtapproved`,`f`.`canceldate` AS `canceldate`,`f`.`cancelledbytdnos` AS `cancelledbytdnos`,`f`.`prevtdno` AS `prevtdno`,`f`.`effectivityyear` AS `effectivityyear`,`f`.`effectivityqtr` AS `effectivityqtr`,`e`.`name` AS `taxpayer_name`,`e`.`address_text` AS `taxpayer_address`,`f`.`owner_name` AS `owner_name`,`f`.`owner_address` AS `owner_address`,`f`.`administrator_name` AS `administrator_name`,`f`.`administrator_address` AS `administrator_address`,`pc`.`name` AS `classification`,`lspc`.`name` AS `specificclass`,`sub`.`code` AS `subclasscode`,`sub`.`name` AS `subclass`,`rp`.`blockno` AS `blockno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`ry` AS `ry`,`rp`.`section` AS `section`,`rp`.`parcel` AS `parcel`,`rp`.`surveyno` AS `surveyno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,(case when (`r`.`useswornamount` = 1) then `r`.`swornamount` else `r`.`totalbmv` end) AS `totalbmv`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav` from ((((((((((`faas` `f` join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `landdetail` `ld` on((`r`.`objid` = `ld`.`landrpuid`))) join `lcuvspecificclass` `spc` on((`ld`.`specificclass_objid` = `spc`.`objid`))) join `landspecificclass` `lspc` on((`spc`.`landspecificclass_objid` = `lspc`.`objid`))) join `lcuvsubclass` `sub` on((`ld`.`subclass_objid` = `sub`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_report_motherland_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_report_motherland_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_motherland_summary` AS select `m`.`subdivisionid` AS `subdivisionid`,`f`.`tdno` AS `tdno`,`f`.`owner_name` AS `owner_name`,`b`.`name` AS `barangay`,`o`.`name` AS `lguname`,`f`.`titleno` AS `titleno`,`f`.`titledate` AS `titledate`,`f`.`fullpin` AS `fullpin`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`surveyno` AS `surveyno`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`rputype` AS `rputype`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`f`.`administrator_name` AS `administrator_name`,`pc`.`code` AS `classcode`,`ft`.`displaycode` AS `txntype_code`,`e`.`name` AS `taxpayer_name` from ((((((((`subdivision_motherland` `m` join `faas` `f` on((`m`.`landfaasid` = `f`.`objid`))) join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `faas_txntype` `ft` on((`f`.`txntype_objid` = `ft`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_report_orc`
--

/*!50001 DROP VIEW IF EXISTS `vw_report_orc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_orc` AS select `f`.`objid` AS `objid`,`f`.`txntype_objid` AS `txntype_objid`,`f`.`state` AS `state`,`e`.`objid` AS `taxpayerid`,`e`.`name` AS `taxpayer_name`,`e`.`address_text` AS `taxpayer_address`,`o`.`name` AS `lgu_name`,`o`.`code` AS `lgu_indexno`,`f`.`dtapproved` AS `dtapproved`,`r`.`rputype` AS `rputype`,`pc`.`code` AS `classcode`,`pc`.`name` AS `classification`,`f`.`fullpin` AS `pin`,`f`.`titleno` AS `titleno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`f`.`tdno` AS `tdno`,`f`.`prevtdno` AS `prevtdno`,'' AS `arpno`,`f`.`prevowner` AS `prevowner`,`b`.`name` AS `location`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,(case when (`f`.`state` = 'CURRENT') then '' else 'CANCELLED' end) AS `remarks` from ((((((`faas` `f` join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) join `sys_org` `o` on((`rp`.`lguid` = `o`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) where (`f`.`state` in ('CURRENT','CANCELLED')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_report_subdividedland`
--

/*!50001 DROP VIEW IF EXISTS `vw_report_subdividedland`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_report_subdividedland` AS select `sl`.`objid` AS `objid`,`s`.`objid` AS `subdivisionid`,`s`.`txnno` AS `txnno`,`b`.`name` AS `barangay`,`o`.`name` AS `lguname`,`pc`.`code` AS `classcode`,`f`.`tdno` AS `tdno`,`f`.`owner_name` AS `owner_name`,`f`.`administrator_name` AS `administrator_name`,`f`.`titleno` AS `titleno`,`f`.`lguid` AS `lguid`,`f`.`titledate` AS `titledate`,`f`.`fullpin` AS `fullpin`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`blockno` AS `blockno`,`rp`.`surveyno` AS `surveyno`,`r`.`totalareaha` AS `totalareaha`,`r`.`rputype` AS `rputype`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalmv` AS `totalmv`,`r`.`totalav` AS `totalav`,`r`.`taxable` AS `taxable`,`f`.`txntype_objid` AS `txntype_objid`,`ft`.`displaycode` AS `txntype_code`,`e`.`name` AS `taxpayer_name` from (((((((((`subdividedland` `sl` join `subdivision` `s` on((`sl`.`subdivisionid` = `s`.`objid`))) join `faas` `f` on((`sl`.`newfaasid` = `f`.`objid`))) join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `o` on((`f`.`lguid` = `o`.`objid`))) join `faas_txntype` `ft` on((`f`.`txntype_objid` = `ft`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rptcertification_item`
--

/*!50001 DROP VIEW IF EXISTS `vw_rptcertification_item`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rptcertification_item` AS select `rci`.`rptcertificationid` AS `rptcertificationid`,`f`.`objid` AS `faasid`,`f`.`fullpin` AS `fullpin`,`f`.`tdno` AS `tdno`,`e`.`objid` AS `taxpayerid`,`e`.`name` AS `taxpayer_name`,`f`.`owner_name` AS `owner_name`,`f`.`administrator_name` AS `administrator_name`,`f`.`titleno` AS `titleno`,`f`.`rpuid` AS `rpuid`,`pc`.`code` AS `classcode`,`pc`.`name` AS `classname`,`so`.`name` AS `lguname`,`b`.`name` AS `barangay`,`r`.`rputype` AS `rputype`,`r`.`suffix` AS `suffix`,`r`.`totalareaha` AS `totalareaha`,`r`.`totalareasqm` AS `totalareasqm`,`r`.`totalav` AS `totalav`,`r`.`totalmv` AS `totalmv`,`rp`.`street` AS `street`,`rp`.`blockno` AS `blockno`,`rp`.`cadastrallotno` AS `cadastrallotno`,`rp`.`surveyno` AS `surveyno`,`r`.`taxable` AS `taxable`,`f`.`effectivityyear` AS `effectivityyear`,`f`.`effectivityqtr` AS `effectivityqtr` from (((((((`rptcertificationitem` `rci` join `faas` `f` on((`rci`.`refid` = `f`.`objid`))) join `rpu` `r` on((`f`.`rpuid` = `r`.`objid`))) join `propertyclassification` `pc` on((`r`.`classification_objid` = `pc`.`objid`))) join `realproperty` `rp` on((`f`.`realpropertyid` = `rp`.`objid`))) join `barangay` `b` on((`rp`.`barangayid` = `b`.`objid`))) join `sys_org` `so` on((`f`.`lguid` = `so`.`objid`))) join `entity` `e` on((`f`.`taxpayer_objid` = `e`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rptledger_avdifference`
--

/*!50001 DROP VIEW IF EXISTS `vw_rptledger_avdifference`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rptledger_avdifference` AS select `rlf`.`objid` AS `objid`,'APPROVED' AS `state`,`d`.`parent_objid` AS `rptledgerid`,`rl`.`faasid` AS `faasid`,`rl`.`tdno` AS `tdno`,`rlf`.`txntype_objid` AS `txntype_objid`,`rlf`.`classification_objid` AS `classification_objid`,`rlf`.`actualuse_objid` AS `actualuse_objid`,`rlf`.`taxable` AS `taxable`,`rlf`.`backtax` AS `backtax`,`d`.`year` AS `fromyear`,1 AS `fromqtr`,`d`.`year` AS `toyear`,4 AS `toqtr`,`d`.`av` AS `assessedvalue`,1 AS `systemcreated`,`rlf`.`reclassed` AS `reclassed`,`rlf`.`idleland` AS `idleland`,1 AS `taxdifference` from ((`rptledger_avdifference` `d` join `rptledgerfaas` `rlf` on((`d`.`rptledgerfaas_objid` = `rlf`.`objid`))) join `rptledger` `rl` on((`d`.`parent_objid` = `rl`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rptledger_cancelled_faas`
--

/*!50001 DROP VIEW IF EXISTS `vw_rptledger_cancelled_faas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rptledger_cancelled_faas` AS select `rl`.`objid` AS `objid`,`rl`.`state` AS `state`,`rl`.`faasid` AS `faasid`,`rl`.`lastyearpaid` AS `lastyearpaid`,`rl`.`lastqtrpaid` AS `lastqtrpaid`,`rl`.`barangayid` AS `barangayid`,`rl`.`taxpayer_objid` AS `taxpayer_objid`,`rl`.`fullpin` AS `fullpin`,`rl`.`tdno` AS `tdno`,`rl`.`cadastrallotno` AS `cadastrallotno`,`rl`.`rputype` AS `rputype`,`rl`.`txntype_objid` AS `txntype_objid`,`rl`.`classification_objid` AS `classification_objid`,`rl`.`classcode` AS `classcode`,`rl`.`totalav` AS `totalav`,`rl`.`totalmv` AS `totalmv`,`rl`.`totalareaha` AS `totalareaha`,`rl`.`taxable` AS `taxable`,`rl`.`owner_name` AS `owner_name`,`rl`.`prevtdno` AS `prevtdno`,`rl`.`titleno` AS `titleno`,`rl`.`administrator_name` AS `administrator_name`,`rl`.`blockno` AS `blockno`,`rl`.`lguid` AS `lguid`,`rl`.`beneficiary_objid` AS `beneficiary_objid`,`pc`.`name` AS `classification`,`b`.`name` AS `barangay`,`o`.`name` AS `lgu` from (((((`rptledger` `rl` join `faas` `f` on((`rl`.`faasid` = `f`.`objid`))) left join `barangay` `b` on((`rl`.`barangayid` = `b`.`objid`))) left join `sys_org` `o` on((`rl`.`lguid` = `o`.`objid`))) left join `propertyclassification` `pc` on((`rl`.`classification_objid` = `pc`.`objid`))) join `entity` `e` on((`rl`.`taxpayer_objid` = `e`.`objid`))) where ((`rl`.`state` = 'APPROVED') and (`f`.`state` = 'CANCELLED')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rptpayment_item_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_rptpayment_item_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rptpayment_item_detail` AS select `rpi`.`objid` AS `objid`,`rpi`.`parentid` AS `parentid`,`rpi`.`rptledgerfaasid` AS `rptledgerfaasid`,`rpi`.`year` AS `year`,`rpi`.`qtr` AS `qtr`,`rpi`.`revperiod` AS `revperiod`,(case when (`rpi`.`revtype` = 'basic') then `rpi`.`amount` else 0 end) AS `basic`,(case when (`rpi`.`revtype` = 'basic') then `rpi`.`interest` else 0 end) AS `basicint`,(case when (`rpi`.`revtype` = 'basic') then `rpi`.`discount` else 0 end) AS `basicdisc`,(case when (`rpi`.`revtype` = 'basic') then (`rpi`.`interest` - `rpi`.`discount`) else 0 end) AS `basicdp`,(case when (`rpi`.`revtype` = 'basic') then ((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) else 0 end) AS `basicnet`,(case when (`rpi`.`revtype` = 'basicidle') then ((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) else 0 end) AS `basicidle`,(case when (`rpi`.`revtype` = 'basicidle') then `rpi`.`interest` else 0 end) AS `basicidleint`,(case when (`rpi`.`revtype` = 'basicidle') then `rpi`.`discount` else 0 end) AS `basicidledisc`,(case when (`rpi`.`revtype` = 'basicidle') then (`rpi`.`interest` - `rpi`.`discount`) else 0 end) AS `basicidledp`,(case when (`rpi`.`revtype` = 'sef') then `rpi`.`amount` else 0 end) AS `sef`,(case when (`rpi`.`revtype` = 'sef') then `rpi`.`interest` else 0 end) AS `sefint`,(case when (`rpi`.`revtype` = 'sef') then `rpi`.`discount` else 0 end) AS `sefdisc`,(case when (`rpi`.`revtype` = 'sef') then (`rpi`.`interest` - `rpi`.`discount`) else 0 end) AS `sefdp`,(case when (`rpi`.`revtype` = 'sef') then ((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) else 0 end) AS `sefnet`,(case when (`rpi`.`revtype` = 'firecode') then ((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) else 0 end) AS `firecode`,(case when (`rpi`.`revtype` = 'sh') then ((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) else 0 end) AS `sh`,(case when (`rpi`.`revtype` = 'sh') then `rpi`.`interest` else 0 end) AS `shint`,(case when (`rpi`.`revtype` = 'sh') then `rpi`.`discount` else 0 end) AS `shdisc`,(case when (`rpi`.`revtype` = 'sh') then (`rpi`.`interest` - `rpi`.`discount`) else 0 end) AS `shdp`,(case when (`rpi`.`revtype` = 'sh') then ((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) else 0 end) AS `shnet`,((`rpi`.`amount` + `rpi`.`interest`) - `rpi`.`discount`) AS `amount`,`rpi`.`partialled` AS `partialled` from `rptpayment_item` `rpi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rpu_assessment`
--

/*!50001 DROP VIEW IF EXISTS `vw_rpu_assessment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rpu_assessment` AS select `r`.`objid` AS `objid`,`r`.`rputype` AS `rputype`,`dpc`.`objid` AS `dominantclass_objid`,`dpc`.`code` AS `dominantclass_code`,`dpc`.`name` AS `dominantclass_name`,`dpc`.`orderno` AS `dominantclass_orderno`,`ra`.`areasqm` AS `areasqm`,`ra`.`areaha` AS `areaha`,`ra`.`marketvalue` AS `marketvalue`,`ra`.`assesslevel` AS `assesslevel`,`ra`.`assessedvalue` AS `assessedvalue`,`ra`.`taxable` AS `taxable`,`au`.`code` AS `actualuse_code`,`au`.`name` AS `actualuse_name`,`auc`.`objid` AS `actualuse_objid`,`auc`.`code` AS `actualuse_classcode`,`auc`.`name` AS `actualuse_classname`,`auc`.`orderno` AS `actualuse_orderno` from ((((`rpu` `r` join `propertyclassification` `dpc` on((`r`.`classification_objid` = `dpc`.`objid`))) join `rpu_assessment` `ra` on((`r`.`objid` = `ra`.`rpuid`))) join `landassesslevel` `au` on((`ra`.`actualuse_objid` = `au`.`objid`))) left join `propertyclassification` `auc` on((`au`.`classification_objid` = `auc`.`objid`))) union select `r`.`objid` AS `objid`,`r`.`rputype` AS `rputype`,`dpc`.`objid` AS `dominantclass_objid`,`dpc`.`code` AS `dominantclass_code`,`dpc`.`name` AS `dominantclass_name`,`dpc`.`orderno` AS `dominantclass_orderno`,`ra`.`areasqm` AS `areasqm`,`ra`.`areaha` AS `areaha`,`ra`.`marketvalue` AS `marketvalue`,`ra`.`assesslevel` AS `assesslevel`,`ra`.`assessedvalue` AS `assessedvalue`,`ra`.`taxable` AS `taxable`,`au`.`code` AS `actualuse_code`,`au`.`name` AS `actualuse_name`,`auc`.`objid` AS `actualuse_objid`,`auc`.`code` AS `actualuse_classcode`,`auc`.`name` AS `actualuse_classname`,`auc`.`orderno` AS `actualuse_orderno` from ((((`rpu` `r` join `propertyclassification` `dpc` on((`r`.`classification_objid` = `dpc`.`objid`))) join `rpu_assessment` `ra` on((`r`.`objid` = `ra`.`rpuid`))) join `bldgassesslevel` `au` on((`ra`.`actualuse_objid` = `au`.`objid`))) left join `propertyclassification` `auc` on((`au`.`classification_objid` = `auc`.`objid`))) union select `r`.`objid` AS `objid`,`r`.`rputype` AS `rputype`,`dpc`.`objid` AS `dominantclass_objid`,`dpc`.`code` AS `dominantclass_code`,`dpc`.`name` AS `dominantclass_name`,`dpc`.`orderno` AS `dominantclass_orderno`,`ra`.`areasqm` AS `areasqm`,`ra`.`areaha` AS `areaha`,`ra`.`marketvalue` AS `marketvalue`,`ra`.`assesslevel` AS `assesslevel`,`ra`.`assessedvalue` AS `assessedvalue`,`ra`.`taxable` AS `taxable`,`au`.`code` AS `actualuse_code`,`au`.`name` AS `actualuse_name`,`auc`.`objid` AS `actualuse_objid`,`auc`.`code` AS `actualuse_classcode`,`auc`.`name` AS `actualuse_classname`,`auc`.`orderno` AS `actualuse_orderno` from ((((`rpu` `r` join `propertyclassification` `dpc` on((`r`.`classification_objid` = `dpc`.`objid`))) join `rpu_assessment` `ra` on((`r`.`objid` = `ra`.`rpuid`))) join `machassesslevel` `au` on((`ra`.`actualuse_objid` = `au`.`objid`))) left join `propertyclassification` `auc` on((`au`.`classification_objid` = `auc`.`objid`))) union select `r`.`objid` AS `objid`,`r`.`rputype` AS `rputype`,`dpc`.`objid` AS `dominantclass_objid`,`dpc`.`code` AS `dominantclass_code`,`dpc`.`name` AS `dominantclass_name`,`dpc`.`orderno` AS `dominantclass_orderno`,`ra`.`areasqm` AS `areasqm`,`ra`.`areaha` AS `areaha`,`ra`.`marketvalue` AS `marketvalue`,`ra`.`assesslevel` AS `assesslevel`,`ra`.`assessedvalue` AS `assessedvalue`,`ra`.`taxable` AS `taxable`,`au`.`code` AS `actualuse_code`,`au`.`name` AS `actualuse_name`,`auc`.`objid` AS `actualuse_objid`,`auc`.`code` AS `actualuse_classcode`,`auc`.`name` AS `actualuse_classname`,`auc`.`orderno` AS `actualuse_orderno` from ((((`rpu` `r` join `propertyclassification` `dpc` on((`r`.`classification_objid` = `dpc`.`objid`))) join `rpu_assessment` `ra` on((`r`.`objid` = `ra`.`rpuid`))) join `planttreeassesslevel` `au` on((`ra`.`actualuse_objid` = `au`.`objid`))) left join `propertyclassification` `auc` on((`au`.`classification_objid` = `auc`.`objid`))) union select `r`.`objid` AS `objid`,`r`.`rputype` AS `rputype`,`dpc`.`objid` AS `dominantclass_objid`,`dpc`.`code` AS `dominantclass_code`,`dpc`.`name` AS `dominantclass_name`,`dpc`.`orderno` AS `dominantclass_orderno`,`ra`.`areasqm` AS `areasqm`,`ra`.`areaha` AS `areaha`,`ra`.`marketvalue` AS `marketvalue`,`ra`.`assesslevel` AS `assesslevel`,`ra`.`assessedvalue` AS `assessedvalue`,`ra`.`taxable` AS `taxable`,`au`.`code` AS `actualuse_code`,`au`.`name` AS `actualuse_name`,`auc`.`objid` AS `actualuse_objid`,`auc`.`code` AS `actualuse_classcode`,`auc`.`name` AS `actualuse_classname`,`auc`.`orderno` AS `actualuse_orderno` from ((((`rpu` `r` join `propertyclassification` `dpc` on((`r`.`classification_objid` = `dpc`.`objid`))) join `rpu_assessment` `ra` on((`r`.`objid` = `ra`.`rpuid`))) join `miscassesslevel` `au` on((`ra`.`actualuse_objid` = `au`.`objid`))) left join `propertyclassification` `auc` on((`au`.`classification_objid` = `auc`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_txn_log`
--

/*!50001 DROP VIEW IF EXISTS `vw_txn_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_txn_log` AS select distinct `u`.`objid` AS `userid`,`u`.`name` AS `username`,`t`.`txndate` AS `txndate`,`t`.`ref` AS `ref`,`t`.`action` AS `action`,1 AS `cnt` from (`txnlog` `t` join `sys_user` `u` on((`t`.`userid` = `u`.`objid`))) union select `u`.`objid` AS `userid`,`u`.`name` AS `username`,`t`.`enddate` AS `txndate`,'faas' AS `ref`,(case when (`t`.`state` like '%receiver%') then 'receive' when (`t`.`state` like '%examiner%') then 'examine' when (`t`.`state` like '%taxmapper_chief%') then 'approve taxmap' when (`t`.`state` like '%taxmapper%') then 'taxmap' when (`t`.`state` like '%appraiser%') then 'appraise' when (`t`.`state` like '%appraiser_chief%') then 'approve appraisal' when (`t`.`state` like '%recommender%') then 'recommend' when (`t`.`state` like '%approver%') then 'approve' else `t`.`state` end) AS `action`,1 AS `cnt` from (`faas_task` `t` join `sys_user` `u` on((`t`.`actor_objid` = `u`.`objid`))) where (not((`t`.`state` like '%assign%'))) union select `u`.`objid` AS `userid`,`u`.`name` AS `username`,`t`.`enddate` AS `txndate`,'subdivision' AS `ref`,(case when (`t`.`state` like '%receiver%') then 'receive' when (`t`.`state` like '%examiner%') then 'examine' when (`t`.`state` like '%taxmapper_chief%') then 'approve taxmap' when (`t`.`state` like '%taxmapper%') then 'taxmap' when (`t`.`state` like '%appraiser%') then 'appraise' when (`t`.`state` like '%appraiser_chief%') then 'approve appraisal' when (`t`.`state` like '%recommender%') then 'recommend' when (`t`.`state` like '%approver%') then 'approve' else `t`.`state` end) AS `action`,1 AS `cnt` from (`subdivision_task` `t` join `sys_user` `u` on((`t`.`actor_objid` = `u`.`objid`))) where (not((`t`.`state` like '%assign%'))) union select `u`.`objid` AS `userid`,`u`.`name` AS `username`,`t`.`enddate` AS `txndate`,'consolidation' AS `ref`,(case when (`t`.`state` like '%receiver%') then 'receive' when (`t`.`state` like '%examiner%') then 'examine' when (`t`.`state` like '%taxmapper_chief%') then 'approve taxmap' when (`t`.`state` like '%taxmapper%') then 'taxmap' when (`t`.`state` like '%appraiser%') then 'appraise' when (`t`.`state` like '%appraiser_chief%') then 'approve appraisal' when (`t`.`state` like '%recommender%') then 'recommend' when (`t`.`state` like '%approver%') then 'approve' else `t`.`state` end) AS `action`,1 AS `cnt` from (`subdivision_task` `t` join `sys_user` `u` on((`t`.`actor_objid` = `u`.`objid`))) where (not((`t`.`state` like '%consolidation%'))) union select `u`.`objid` AS `userid`,`u`.`name` AS `username`,`t`.`enddate` AS `txndate`,'cancelledfaas' AS `ref`,(case when (`t`.`state` like '%receiver%') then 'receive' when (`t`.`state` like '%examiner%') then 'examine' when (`t`.`state` like '%taxmapper_chief%') then 'approve taxmap' when (`t`.`state` like '%taxmapper%') then 'taxmap' when (`t`.`state` like '%appraiser%') then 'appraise' when (`t`.`state` like '%appraiser_chief%') then 'approve appraisal' when (`t`.`state` like '%recommender%') then 'recommend' when (`t`.`state` like '%approver%') then 'approve' else `t`.`state` end) AS `action`,1 AS `cnt` from (`subdivision_task` `t` join `sys_user` `u` on((`t`.`actor_objid` = `u`.`objid`))) where (not((`t`.`state` like '%cancelledfaas%'))) */;
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

-- Dump completed on 2026-10-12 13:58:47


-- Workflow Starting on 2026-10-12 13:58:47

delete from sys_wf_transition where processname not in ('business_application'); 
delete from sys_wf_node where processname not in ('business_application'); 
delete from sys_wf where name not in ('business_application'); 

INSERT INTO `sys_wf` VALUES ('consolidation','Consolidation Transaction Workflow',NULL),('faas','FAAS Transaction Workflow',NULL),('subdivision','Subdivision Transaction Workflow',NULL);

INSERT INTO `sys_wf_node` VALUES ('start','faas','Start','start',1,NULL,'RPT',NULL,NULL,NULL,NULL),('start','subdivision','Start','start',1,NULL,'RPT',NULL,NULL,NULL,NULL),('start','consolidation','Start','start',1,NULL,'RPT',NULL,NULL,NULL,NULL),('assign-receiver','faas','Assign Receiver','state',2,0,'RPT','RECEIVER',NULL,NULL,NULL),('receiver','faas','Review and Verification','state',5,NULL,'RPT','RECEIVER',NULL,NULL,NULL),('receiver','subdivision','Review and Verification','state',5,NULL,'RPT','RECEIVER',NULL,NULL,NULL),('receiver','consolidation','Review and Verification','state',5,NULL,'RPT','RECEIVER',NULL,NULL,NULL),('assign-examiner','faas','For Examination','state',10,NULL,'RPT','EXAMINER',NULL,NULL,NULL),('assign-examiner','subdivision','For Examination','state',10,NULL,'RPT','EXAMINER',NULL,NULL,NULL),('assign-examiner','consolidation','For Examination','state',10,NULL,'RPT','EXAMINER',NULL,NULL,NULL),('examiner','faas','Examination','state',15,NULL,'RPT','EXAMINER',NULL,NULL,NULL),('examiner','subdivision','Examination','state',15,NULL,'RPT','EXAMINER',NULL,NULL,NULL),('examiner','consolidation','Examination','state',15,NULL,'RPT','EXAMINER',NULL,NULL,NULL),('assign-taxmapper','faas','For Taxmapping','state',20,NULL,'RPT','TAXMAPPER',NULL,NULL,NULL),('assign-taxmapper','subdivision','For Taxmapping','state',20,NULL,'RPT','TAXMAPPER',NULL,NULL,NULL),('assign-taxmapper','consolidation','For Taxmapping','state',20,NULL,'RPT','TAXMAPPER',NULL,NULL,NULL),('taxmapper','faas','Taxmapping','state',25,NULL,'RPT','TAXMAPPER',NULL,NULL,NULL),('taxmapper','subdivision','Taxmapping','state',25,NULL,'RPT','TAXMAPPER',NULL,NULL,NULL),('taxmapper','consolidation','Taxmapping','state',25,NULL,'RPT','TAXMAPPER',NULL,NULL,NULL),('assign-provtaxmapperchief','faas','For Taxmapping Approval','state',25,0,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('assign-taxmapping-approval','faas','For Taxmapper Chief Approval','state',30,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('assign-taxmapping-approval','subdivision','For Taxmapping Approval','state',30,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('assign-taxmapping-approval','consolidation','For Taxmapping Approval','state',30,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('taxmapper_chief','faas','Taxmapping Approval','state',35,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('taxmapper_chief','subdivision','Taxmapping Approval','state',35,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('taxmapper_chief','consolidation','Taxmapping Approval','state',35,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('provtaxmapperchief','faas','Taxmapping Chief Approval','state',35,NULL,'RPT','TAXMAPPER_CHIEF',NULL,NULL,NULL),('assign-appraiser','faas','For Appraisal','state',40,NULL,'RPT','APPRAISER',NULL,NULL,NULL),('assign-appraiser','subdivision','For Appraisal','state',40,NULL,'RPT','APPRAISER',NULL,NULL,NULL),('assign-appraiser','consolidation','For Appraisal','state',40,NULL,'RPT','APPRAISER',NULL,NULL,NULL),('appraiser','faas','Appraisal','state',45,NULL,'RPT','APPRAISER',NULL,NULL,NULL),('appraiser','subdivision','Appraisal','state',45,NULL,'RPT','APPRAISER',NULL,NULL,NULL),('appraiser','consolidation','Appraisal','state',45,NULL,'RPT','APPRAISER',NULL,NULL,NULL),('assign-appraisal-chief','faas','For Appraisal Chief Approval','state',50,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('assign-appraisal-chief','subdivision','For Appraisal Approval','state',50,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('assign-appraisal-chief','consolidation','For Appraisal Approval','state',50,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('appraiser_chief','faas','Appraisal Chief Approval','state',55,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('appraiser_chief','subdivision','Appraisal Approval','state',55,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('appraiser_chief','consolidation','Appraisal Approval','state',55,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('provappraiserchief','faas','Appraisal Chief Approval','state',55,NULL,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('assign-recommender','faas','For Recommending Approval','state',70,NULL,'RPT','RECOMMENDER',NULL,NULL,NULL),('assign-recommender','subdivision','For Recommending Approval','state',70,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('assign-recommender','consolidation','For Recommending Approval','state',70,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('assign-provrecommender','faas','For Recommending Approval','state',71,NULL,'RPT','RECOMMENDER',NULL,NULL,NULL),('recommender','faas','Recommending Approval','state',75,NULL,'RPT','RECOMMENDER',NULL,NULL,NULL),('recommender','subdivision','Recommending Approval','state',75,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('recommender','consolidation','Recommending Approval','state',75,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('provrecommender','faas','Recommending Approval','state',76,NULL,'RPT','RECOMMENDER',NULL,NULL,NULL),('assign-approver','faas','For Assessor Approval','state',80,NULL,'RPT','APPROVER,ASSESSOR',NULL,NULL,NULL),('forprovsubmission','subdivision','For Province Submission','state',80,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('forprovsubmission','consolidation','For Province Submission','state',80,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('forprovapproval','subdivision','For Province Approval','state',81,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('forprovapproval','consolidation','For Province Approval','state',81,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('approver','faas','Assessor Approval','state',85,NULL,'RPT','APPROVER,ASSESSOR',NULL,NULL,NULL),('forapproval','subdivision','For Province Approval','state',85,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('forapproval','consolidation','For Province Approval','state',85,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('approver','subdivision','Province Approval','state',90,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('approver','consolidation','Province Approval','state',90,NULL,'RPT','RECOMMENDER,ASSESSOR',NULL,NULL,NULL),('provapprover','subdivision','Approved By Province','state',96,NULL,'RPT','APPROVER',NULL,NULL,NULL),('provapprover','consolidation','Approved By Province','state',96,NULL,'RPT','APPROVER',NULL,NULL,NULL),('assign-provtaxmapper','faas','For Taxmapping','state',200,0,'RPT','TAXMAPPER',NULL,NULL,NULL),('assign-provappraiserchief','faas','For Appraisal Chief Approval','state',201,0,'RPT','APPRAISAL_CHIEF',NULL,NULL,NULL),('provtaxmapper','faas','Taxmapping','state',205,0,'RPT','TAXMAPPER',NULL,NULL,NULL),('assign-provappraiser','faas','For Appraisal','state',210,0,'RPT','APPRAISER',NULL,NULL,NULL),('provappraiser','faas','Appraisal','state',215,0,'RPT','APPRAISER',NULL,NULL,NULL),('assign-provapprover','faas','For Provincial Assessor Approval','state',220,0,'RPT','APPROVER',NULL,NULL,NULL),('provapprover','faas','Provincial Assessor Approval','state',230,NULL,'RPT','APPROVER,ASSESSOR',NULL,NULL,NULL),('end','faas','End','end',1000,NULL,'RPT',NULL,NULL,NULL,NULL),('end','subdivision','End','end',1000,NULL,'RPT',NULL,NULL,NULL,NULL),('end','consolidation','End','end',1000,NULL,'RPT',NULL,NULL,NULL,NULL);

INSERT INTO `sys_wf_transition` VALUES ('appraiser','consolidation','returntaxmapper','taxmapper',45,NULL,'[caption:\'Return to Taxmapper\', confirm:\'Return to taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','consolidation','returnexaminer','examiner',46,NULL,'[caption:\'Return to Examiner\', confirm:\'Return to examiner?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','consolidation','submit','assign-recommender',47,NULL,'[caption:\'Submit for Recommending Approval\', confirm:\'Submit?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('approver','consolidation','','provapprover',90,NULL,'[caption:\'Manually Approve Consolidation\', confirm:\'Approve?\', messagehandler:\'rptmessage:approval\']',NULL,NULL,NULL),('assign-appraiser','consolidation','','appraiser',40,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-examiner','consolidation','','examiner',10,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-recommender','consolidation','','recommender',70,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-taxmapper','consolidation','','taxmapper',20,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('examiner','consolidation','returnreceiver','receiver',15,NULL,'[caption:\'Return to Receiver\', confirm:\'Return to receiver?\', messagehandler:\'default\']',NULL,NULL,NULL),('examiner','consolidation','submit','assign-taxmapper',16,NULL,'[caption:\'Submit for Taxmapping\', confirm:\'Submit?\']',NULL,NULL,NULL),('forprovsubmission','consolidation','returnapprover','recommender',80,NULL,'[caption:\'Cancel Posting\', confirm:\'Cancel posting record?\']',NULL,NULL,NULL),('forprovsubmission','consolidation','completed','approver',81,NULL,'[caption:\'Completed\', visible:false]',NULL,NULL,NULL),('provapprover','consolidation','backforprovapproval','approver',95,NULL,'[caption:\'Cancel Posting\', confirm:\'Cancel posting record?\']',NULL,NULL,NULL),('provapprover','consolidation','completed','end',100,NULL,'[caption:\'Approved\', visible:false]',NULL,NULL,NULL),('receiver','consolidation','submit','assign-examiner',5,NULL,'[caption:\'Submit For Examination\', confirm:\'Submit?\']',NULL,NULL,NULL),('receiver','consolidation','delete','end',6,NULL,'[caption:\'Delete\', confirm:\'Delete?\', closeonend:true]',NULL,NULL,NULL),('recommender','consolidation','returnexaminer','examiner',75,NULL,'[caption:\'Return to Examiner\', confirm:\'Return to examiner?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','consolidation','returntaxmapper','taxmapper',76,NULL,'[caption:\'Return to Taxmapper\', confirm:\'Return to taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','consolidation','returnappraiser','appraiser',77,NULL,'[caption:\'Return to Appraiser\', confirm:\'Return to appraiser?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','consolidation','submit','forprovsubmission',78,NULL,'[caption:\'Submit to Province\', confirm:\'Submit to Province?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('start','consolidation','','receiver',1,NULL,NULL,NULL,NULL,NULL),('taxmapper','consolidation','returnreceiver','receiver',25,NULL,'[caption:\'Return to Receiver\', confirm:\'Return to receiver?\', messagehandler:\'default\']',NULL,NULL,NULL),('taxmapper','consolidation','submit','assign-appraiser',26,NULL,'[caption:\'Submit for Appraisal\', confirm:\'Submit?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('taxmapper','consolidation','returnexaminer','examiner',26,NULL,'[caption:\'Return to Examiner\', confirm:\'Return to examiner?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','faas','return_receiver','receiver',45,NULL,'[caption:\'Return to Receiver\',confirm:\'Return to receiver?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','faas','return_taxmapper','taxmapper',46,NULL,'[caption:\'Return to Taxmapper\',confirm:\'Return to taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','faas','submit','assign-recommender',47,NULL,'[caption:\'Submit to Assessor\', confirm:\'Submit for approval?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('approver','faas','return_recommender','recommender',85,NULL,'[caption:\'Return to Recommender\',confirm:\'Return to Recommender?\', messagehandler:\'default\']',NULL,NULL,NULL),('approver','faas','return_taxmapper','taxmapper',86,NULL,'[caption:\'Return to Taxmapper\',confirm:\'Return to Taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('approver','faas','return_appraiser','appraiser',87,NULL,'[caption:\'Return to Appraiser\',confirm:\'Return to Appraiser?\', messagehandler:\'default\']',NULL,NULL,NULL),('approver','faas','approve','end',100,NULL,'[caption:\'Approve\', confirm:\'Approve FAAS?\', closeonend:false, messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('assign-appraiser','faas','','appraiser',40,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-examiner','faas','','examiner',15,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-recommender','faas','','recommender',70,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-taxmapper','faas','','taxmapper',20,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('examiner','faas','returnreceiver','receiver',16,NULL,'[caption:\'Return to Receiver\', confirm:\'Return to receiver?\', messagehandler:\'default\']',NULL,NULL,NULL),('examiner','faas','submit','assign-taxmapper',17,NULL,'[caption:\'Submit for Taxmapping\', confirm:\'Submit?\']',NULL,NULL,NULL),('provapprover','faas','approve','end',110,NULL,'[caption:\'Approve\', visible:false]',NULL,NULL,NULL),('receiver','faas','delete','end',5,NULL,'[caption:\'Delete\', confirm:\'Delete record?\', closeonend:true]',NULL,NULL,NULL),('receiver','faas','submit_examiner','assign-examiner',11,NULL,'[caption:\'Submit for Examination\', confirm:\'Submit for examination?\', messagehandler:\'default\']',NULL,NULL,NULL),('receiver','faas','submit_taxmapper','assign-taxmapper',12,NULL,'[caption:\'Submit for Taxmapping\', confirm:\'Submit for taxmapping?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','faas','return_appraiser','appraiser',72,NULL,'[caption:\'Return to Appraiser\',confirm:\'Return to appraiser?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','faas','return_taxmapper','taxmapper',73,NULL,'[caption:\'Return to Taxmapper\',confirm:\'Return to taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','faas','submit_to_province','provapprover',75,NULL,'[caption:\'Submit to Province\', confirm:\'Submit to Province?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('recommender','faas','submit_assessor','approver',76,NULL,'[caption:\'Submit for Approval\', confirm:\'Submit for Assessor Approval?\', messagehandler:\'default\']',NULL,NULL,NULL),('start','faas','','receiver',1,NULL,NULL,NULL,NULL,NULL),('taxmapper','faas','return_receiver','receiver',25,NULL,'[caption:\'Return to Receiver\',confirm:\'Return to receiver?\',messagehandler:\'default\']',NULL,NULL,NULL),('taxmapper','faas','submit','assign-appraiser',27,NULL,'[caption:\'Submit for Appraisal\', confirm:\'Submit for appraisal?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('appraiser','subdivision','returntaxmapper','taxmapper',45,NULL,'[caption:\'Return to Taxmapper\', confirm:\'Return to taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','subdivision','returnexaminer','examiner',46,NULL,'[caption:\'Return to Examiner\', confirm:\'Return to examiner?\', messagehandler:\'default\']',NULL,NULL,NULL),('appraiser','subdivision','submit','assign-recommender',47,NULL,'[caption:\'Submit for Recommending Approval\', confirm:\'Submit?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('approver','subdivision','','provapprover',90,NULL,'[caption:\'Manually Approve Subdivision\', confirm:\'Approve?\', messagehandler:\'rptmessage:approval\']','',NULL,NULL),('assign-appraiser','subdivision','','appraiser',40,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-examiner','subdivision','','examiner',10,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-recommender','subdivision','','recommender',70,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('assign-taxmapper','subdivision','','taxmapper',20,NULL,'[caption:\'Assign To Me\', confirm:\'Assign task to you?\']',NULL,NULL,NULL),('examiner','subdivision','returnreceiver','receiver',15,NULL,'[caption:\'Return to Receiver\', confirm:\'Return to receiver?\', messagehandler:\'default\']',NULL,NULL,NULL),('examiner','subdivision','submit','assign-taxmapper',16,NULL,'[caption:\'Submit for Taxmapping\', confirm:\'Submit?\']',NULL,NULL,NULL),('forprovsubmission','subdivision','returnapprover','recommender',80,NULL,'[caption:\'Cancel Posting\', confirm:\'Cancel posting record?\']','',NULL,NULL),('forprovsubmission','subdivision','completed','approver',81,NULL,'[caption:\'Completed\', visible:false]','',NULL,NULL),('provapprover','subdivision','backforprovapproval','approver',95,NULL,'[caption:\'Cancel Posting\', confirm:\'Cancel posting record?\']','',NULL,NULL),('provapprover','subdivision','completed','end',100,NULL,'[caption:\'Approved\', visible:false]','',NULL,NULL),('receiver','subdivision','submit','assign-examiner',5,NULL,'[caption:\'Submit For Examination\', confirm:\'Submit?\']',NULL,NULL,NULL),('receiver','subdivision','delete','end',6,NULL,'[caption:\'Delete\', confirm:\'Delete?\', closeonend:true]',NULL,NULL,NULL),('recommender','subdivision','returnexaminer','examiner',75,NULL,'[caption:\'Return to Examiner\', confirm:\'Return to examiner?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','subdivision','returntaxmapper','taxmapper',76,NULL,'[caption:\'Return to Taxmapper\', confirm:\'Return to taxmapper?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','subdivision','returnappraiser','appraiser',77,NULL,'[caption:\'Return to Appraiser\', confirm:\'Return to appraiser?\', messagehandler:\'default\']',NULL,NULL,NULL),('recommender','subdivision','submit','forprovsubmission',78,NULL,'[caption:\'Submit to Province\', confirm:\'Submit to Province?\', messagehandler:\'rptmessage:create\']','',NULL,NULL),('start','subdivision','','receiver',1,NULL,NULL,NULL,NULL,NULL),('taxmapper','subdivision','returnreceiver','receiver',25,NULL,'[caption:\'Return to Receiver\', confirm:\'Return to receiver?\', messagehandler:\'default\']','',NULL,NULL),('taxmapper','subdivision','submit','assign-appraiser',26,NULL,'[caption:\'Submit for Appraisal\', confirm:\'Submit?\', messagehandler:\'rptmessage:create\']',NULL,NULL,NULL),('taxmapper','subdivision','returnexaminer','examiner',26,NULL,'[caption:\'Return to Examiner\', confirm:\'Return to examiner?\', messagehandler:\'default\']',NULL,NULL,NULL);

-- Workflow Completed on 2026-10-12 13:58:47
