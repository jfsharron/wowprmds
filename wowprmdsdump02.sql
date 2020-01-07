-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: wowprmds
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Temporary table structure for view `LAallExcUnits`
--

DROP TABLE IF EXISTS `LAallExcUnits`;
/*!50001 DROP VIEW IF EXISTS `LAallExcUnits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `LAallExcUnits` AS SELECT 
 1 AS `loadEntry_covenant`,
 1 AS `covenant_id`,
 1 AS `covenant_covenantNo`,
 1 AS `covenant_parentCo`,
 1 AS `parentCo_id`,
 1 AS `parentCo_name`,
 1 AS `covenant_supplierSub`,
 1 AS `supplierSub_id`,
 1 AS `supplierSub_name`,
 1 AS `supplierSub_parent`,
 1 AS `supplier_id`,
 1 AS `supplier_name`,
 1 AS `loadEntry_loadNo`,
 1 AS `covenant_recLoc`,
 1 AS `locationSub_id`,
 1 AS `locationSub_name`,
 1 AS `loadEntry_deliveryDate`,
 1 AS `loadEntry_deliveryTime`,
 1 AS `loadEntry_grossWeight`,
 1 AS `loadEntry_tareWeight`,
 1 AS `loadEntry_moisture`,
 1 AS `covenant_material`,
 1 AS `material_id`,
 1 AS `material_species`,
 1 AS `materialSpecies_id`,
 1 AS `materialSpecies_desc`,
 1 AS `material_type`,
 1 AS `materialType_id`,
 1 AS `materialType_desc`,
 1 AS `covenant_matPrice`,
 1 AS `covenant_freightCompany`,
 1 AS `freightComp_id`,
 1 AS `freightComp_name`,
 1 AS `covenant_arbFreightRate`,
 1 AS `covenant_freightRate`,
 1 AS `covenant_freightSurCharge`,
 1 AS `loadEntry_notes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `LAappend`
--

DROP TABLE IF EXISTS `LAappend`;
/*!50001 DROP VIEW IF EXISTS `LAappend`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `LAappend` AS SELECT 
 1 AS `loadEntry_covenant`,
 1 AS `covenant_id`,
 1 AS `covenant_covenantNo`,
 1 AS `covenant_parentCo`,
 1 AS `parentCo_id`,
 1 AS `parentCo_name`,
 1 AS `covenant_supplierSub`,
 1 AS `supplierSub_id`,
 1 AS `supplierSub_name`,
 1 AS `supplierSub_parent`,
 1 AS `supplier_id`,
 1 AS `supplier_name`,
 1 AS `covenant_recLoc`,
 1 AS `locationSub_id`,
 1 AS `locationSub_name`,
 1 AS `loadEntry_deliveryDate`,
 1 AS `loadEntry_deliveryTime`,
 1 AS `loadEntry_grossWeight`,
 1 AS `loadEntry_tareWeight`,
 1 AS `loadEntry_moisture`,
 1 AS `covenant_material`,
 1 AS `material_id`,
 1 AS `material_species`,
 1 AS `materialSpecies_id`,
 1 AS `materialSpecies_desc`,
 1 AS `material_type`,
 1 AS `materialType_id`,
 1 AS `materialType_desc`,
 1 AS `covenant_matPrice`,
 1 AS `covenant_freightCompany`,
 1 AS `freightComp_id`,
 1 AS `freightComp_name`,
 1 AS `covenant_arbFreightRate`,
 1 AS `covenant_freightRate`,
 1 AS `covenant_freightSurCharge`,
 1 AS `loadEntry_notes`,
 1 AS `loadEntry_loadNo`,
 1 AS `matUnit_loadNo`,
 1 AS `covenant_matUnit`,
 1 AS `unit_id`,
 1 AS `unit_desc`,
 1 AS `freightUnit_loadNo`,
 1 AS `freightUnit_id`,
 1 AS `freightUnit_desc`,
 1 AS `freightScUnit_loadNo`,
 1 AS `freightScUnit_id`,
 1 AS `freightScUnit_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `LAfreightScUnit`
--

DROP TABLE IF EXISTS `LAfreightScUnit`;
/*!50001 DROP VIEW IF EXISTS `LAfreightScUnit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `LAfreightScUnit` AS SELECT 
 1 AS `loadEntry_loadNo`,
 1 AS `loadEntry_covenant`,
 1 AS `covenant_freightScUnit`,
 1 AS `unit_id`,
 1 AS `unit_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `LAfreightUnit`
--

DROP TABLE IF EXISTS `LAfreightUnit`;
/*!50001 DROP VIEW IF EXISTS `LAfreightUnit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `LAfreightUnit` AS SELECT 
 1 AS `loadEntry_loadNo`,
 1 AS `loadEntry_covenant`,
 1 AS `covenant_freightUnit`,
 1 AS `unit_id`,
 1 AS `unit_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `LAmatUnit`
--

DROP TABLE IF EXISTS `LAmatUnit`;
/*!50001 DROP VIEW IF EXISTS `LAmatUnit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `LAmatUnit` AS SELECT 
 1 AS `loadEntry_loadNo`,
 1 AS `loadEntry_covenant`,
 1 AS `covenant_matUnit`,
 1 AS `unit_id`,
 1 AS `unit_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `arcAll`
--

DROP TABLE IF EXISTS `arcAll`;
/*!50001 DROP VIEW IF EXISTS `arcAll`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `arcAll` AS SELECT 
 1 AS `loadArchiving_id`,
 1 AS `loadArchiving_parentCoId`,
 1 AS `loadArchiving_parentCo`,
 1 AS `loadArchiving_covenantId`,
 1 AS `loadArchiving_covenantNo`,
 1 AS `loadArchiving_supplier`,
 1 AS `loadArchiving_supplierNo`,
 1 AS `loadArchiving_supplierSub`,
 1 AS `loadArchiving_supplierSubNo`,
 1 AS `loadArchiving_loadNo`,
 1 AS `loadArchiving_recLoc`,
 1 AS `loadArchiving_recLocNo`,
 1 AS `loadArchiving_deliveryDate`,
 1 AS `loadArchiving_deliveryTime`,
 1 AS `loadArchiving_grossWeight`,
 1 AS `loadArchiving_tareWeight`,
 1 AS `loadArchiving_moisture`,
 1 AS `loadArchiving_material`,
 1 AS `loadArchiving_materialSpecies`,
 1 AS `loadArchiving_materialSpeciesNo`,
 1 AS `loadArchiving_materialType`,
 1 AS `loadArchiving_materialTypeNo`,
 1 AS `loadArchiving_materialPrice`,
 1 AS `loadArchiving_materialUnitDesc`,
 1 AS `loadArchiving_materialUnitNo`,
 1 AS `loadArchiving_freightCompany`,
 1 AS `loadArchiving_freightCompanyNo`,
 1 AS `loadArchiving_arbFreightCost`,
 1 AS `loadArchiving_freightCost`,
 1 AS `loadArchiving_freightUnit`,
 1 AS `loadArchiving_freightUnitNo`,
 1 AS `loadArchiving_freightSurcharge`,
 1 AS `loadArchiving_freightScUnit`,
 1 AS `loadArchiving_freightScUnitNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `arcName`
--

DROP TABLE IF EXISTS `arcName`;
/*!50001 DROP VIEW IF EXISTS `arcName`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `arcName` AS SELECT 
 1 AS `loadArchiving_id`,
 1 AS `loadArchiving_parentCo`,
 1 AS `loadArchiving_covenantId`,
 1 AS `loadArchiving_covenantNo`,
 1 AS `loadArchiving_supplier`,
 1 AS `loadArchiving_supplierSub`,
 1 AS `loadArchiving_loadNo`,
 1 AS `loadArchiving_recLoc`,
 1 AS `loadArchiving_deliveryDate`,
 1 AS `loadArchiving_deliveryTime`,
 1 AS `loadArchiving_grossWeight`,
 1 AS `loadArchiving_tareWeight`,
 1 AS `loadArchiving_moisture`,
 1 AS `loadArchiving_material`,
 1 AS `loadArchiving_materialSpecies`,
 1 AS `loadArchiving_materialType`,
 1 AS `loadArchiving_materialPrice`,
 1 AS `loadArchiving_materialUnitDesc`,
 1 AS `loadArchiving_freightCompany`,
 1 AS `loadArchiving_arbFreightCost`,
 1 AS `loadArchiving_freightCost`,
 1 AS `loadArchiving_freightUnit`,
 1 AS `loadArchiving_freightSurcharge`,
 1 AS `loadArchiving_freightScUnit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `arcNumeric`
--

DROP TABLE IF EXISTS `arcNumeric`;
/*!50001 DROP VIEW IF EXISTS `arcNumeric`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `arcNumeric` AS SELECT 
 1 AS `loadArchiving_id`,
 1 AS `loadArchiving_parentCoId`,
 1 AS `loadArchiving_covenantId`,
 1 AS `loadArchiving_covenantNo`,
 1 AS `loadArchiving_supplierNo`,
 1 AS `loadArchiving_supplierSubNo`,
 1 AS `loadArchiving_loadNo`,
 1 AS `loadArchiving_recLocNo`,
 1 AS `loadArchiving_deliveryDate`,
 1 AS `loadArchiving_deliveryTime`,
 1 AS `loadArchiving_grossWeight`,
 1 AS `loadArchiving_tareWeight`,
 1 AS `loadArchiving_moisture`,
 1 AS `loadArchiving_material`,
 1 AS `loadArchiving_materialSpeciesNo`,
 1 AS `loadArchiving_materialTypeNo`,
 1 AS `loadArchiving_materialPrice`,
 1 AS `loadArchiving_materialUnitNo`,
 1 AS `loadArchiving_freightCompanyNo`,
 1 AS `loadArchiving_arbFreightCost`,
 1 AS `loadArchiving_freightCost`,
 1 AS `loadArchiving_freightUnitNo`,
 1 AS `loadArchiving_freightSurcharge`,
 1 AS `loadArchiving_freightScUnitNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_last` varchar(45) NOT NULL,
  `contact_first` varchar(45) NOT NULL,
  `contact_jobTitle` varchar(45) DEFAULT NULL,
  `contact_email` varchar(45) DEFAULT NULL,
  `contact_phone1desc` varchar(45) DEFAULT NULL,
  `contact_phone1` varchar(10) DEFAULT NULL,
  `contact_phone2desc` varchar(45) DEFAULT NULL,
  `contact_phone2` varchar(10) DEFAULT NULL,
  `contact_phone3desc` varchar(45) DEFAULT NULL,
  `contact_phone3` varchar(10) DEFAULT NULL,
  `contact_fax` varchar(10) DEFAULT NULL,
  `contact_address1desc` varchar(45) DEFAULT NULL,
  `contact_address1line1` varchar(45) DEFAULT NULL,
  `contact_address1line2` varchar(45) DEFAULT NULL,
  `contact_address1postal` varchar(7) DEFAULT NULL,
  `contact_address2desc` varchar(45) DEFAULT NULL,
  `contact_address2line1` varchar(45) DEFAULT NULL,
  `contact_address2line2` varchar(45) DEFAULT NULL,
  `contact_address2postal` varchar(7) DEFAULT NULL,
  `contact_notes` varchar(500) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`),
  KEY `KEY` (`last_modified`),
  KEY `fk_contact_geo1_idx` (`contact_address1postal`),
  KEY `fk_contact_geo2_idx` (`contact_address2postal`),
  KEY `contact_last` (`contact_last`),
  CONSTRAINT `fk_contact_geo1` FOREIGN KEY (`contact_address1postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contact_geo2` FOREIGN KEY (`contact_address2postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3044 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `covenant`
--

DROP TABLE IF EXISTS `covenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `covenant` (
  `covenant_id` int(11) NOT NULL AUTO_INCREMENT,
  `covenant_parentCo` int(11) NOT NULL,
  `covenant_active` tinyint(1) DEFAULT NULL,
  `covenant_covenantNo` varchar(45) NOT NULL,
  `covenant_originDate` date NOT NULL,
  `covenant_revision` varchar(45) DEFAULT NULL,
  `covenant_revisionDate` date DEFAULT NULL,
  `covenant_revisionDetails` varchar(500) DEFAULT NULL,
  `covenant_variant` varchar(45) DEFAULT NULL,
  `covenant_variantDetails` varchar(500) DEFAULT NULL,
  `covenant_supplierSub` int(11) NOT NULL,
  `covenant_material` int(11) DEFAULT NULL,
  `covenant_recLoc` int(11) DEFAULT NULL,
  `covenant_matPrice` decimal(5,2) DEFAULT NULL,
  `covenant_matUnit` int(11) DEFAULT NULL,
  `covenant_remitFreq` int(11) DEFAULT NULL,
  `covenant_freightFobRec` tinyint(1) DEFAULT NULL,
  `covenant_freightCompany` int(11) DEFAULT NULL,
  `covenant_freightUnit` int(11) DEFAULT NULL,
  `covenant_arbFreightRate` tinyint(1) DEFAULT NULL,
  `covenant_freightRate` decimal(6,2) DEFAULT NULL,
  `covenant_freightSurCharge` decimal(6,2) DEFAULT NULL,
  `covenant_freightScUnit` int(11) DEFAULT NULL,
  `covenant_freightScLastUpdate` date DEFAULT NULL,
  `covenant_freightRemitFreq` int(11) DEFAULT NULL,
  `covenant_notes` varchar(500) DEFAULT NULL,
  `origin_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`covenant_id`),
  KEY `KEY` (`last_modified`),
  KEY `fk_contract_supplierSub1_idx` (`covenant_supplierSub`),
  KEY `fk_contract_locationSub1_idx` (`covenant_recLoc`),
  KEY `fk_contract_unit1_idx` (`covenant_matUnit`),
  KEY `fk_contract_remitFreq1_idx` (`covenant_remitFreq`),
  KEY `fk_contract_freightComp1_idx` (`covenant_freightCompany`),
  KEY `fk_contract_unit2_idx` (`covenant_freightUnit`),
  KEY `fk_contract_remitFreq2_idx` (`covenant_freightRemitFreq`),
  KEY `fk_contract_material1_idx` (`covenant_material`),
  KEY `fk_contract_unit3_idx` (`covenant_freightScUnit`),
  KEY `fk_covenant_parentCo` (`covenant_parentCo`),
  CONSTRAINT `fk_covenant_freightComp` FOREIGN KEY (`covenant_freightCompany`) REFERENCES `freightComp` (`freightComp_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightRemitFreq` FOREIGN KEY (`covenant_freightRemitFreq`) REFERENCES `remitFreq` (`remitFreq_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightScUnit` FOREIGN KEY (`covenant_freightScUnit`) REFERENCES `unit` (`unit_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightUnit` FOREIGN KEY (`covenant_freightUnit`) REFERENCES `unit` (`unit_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_locationSub` FOREIGN KEY (`covenant_recLoc`) REFERENCES `locationSub` (`locationSub_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_matUnit` FOREIGN KEY (`covenant_matUnit`) REFERENCES `unit` (`unit_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_material` FOREIGN KEY (`covenant_material`) REFERENCES `material` (`material_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_parentCo` FOREIGN KEY (`covenant_parentCo`) REFERENCES `parentCo` (`parentCo_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_remitFreq` FOREIGN KEY (`covenant_remitFreq`) REFERENCES `remitFreq` (`remitFreq_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_supplierSub` FOREIGN KEY (`covenant_supplierSub`) REFERENCES `supplierSub` (`supplierSub_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2000017 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `freightComp`
--

DROP TABLE IF EXISTS `freightComp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freightComp` (
  `freightComp_id` int(11) NOT NULL AUTO_INCREMENT,
  `freightComp_name` varchar(45) NOT NULL,
  `freightComp_active` tinyint(1) DEFAULT NULL,
  `freightComp_contact` int(11) DEFAULT NULL,
  `freightComp_phone1desc` varchar(45) DEFAULT NULL,
  `freightComp_phone1` varchar(10) DEFAULT NULL,
  `freightComp_phone2desc` varchar(45) DEFAULT NULL,
  `freightComp_phone2` varchar(10) DEFAULT NULL,
  `freightComp_fax` varchar(10) DEFAULT NULL,
  `freightComp_address1desc` varchar(45) DEFAULT NULL,
  `freightComp_address1line1` varchar(45) DEFAULT NULL,
  `freightComp_address1line2` varchar(45) DEFAULT NULL,
  `freightComp_address1postal` varchar(7) DEFAULT NULL,
  `freightComp_address2desc` varchar(45) DEFAULT NULL,
  `freightComp_address2line1` varchar(45) DEFAULT NULL,
  `freightComp_address2line2` varchar(45) DEFAULT NULL,
  `freightComp_address2postal` varchar(7) DEFAULT NULL,
  `freightComp_notes` varchar(500) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`freightComp_id`),
  UNIQUE KEY `freightComp_name_UNIQUE` (`freightComp_name`),
  KEY `KEY` (`last_modified`),
  KEY `fk_freightComp_contact1_idx` (`freightComp_contact`),
  KEY `fk_freightComp_geo1_idx` (`freightComp_address1postal`),
  KEY `fk_freightComp_geo2_idx` (`freightComp_address2postal`),
  CONSTRAINT `fk_freightComp_contact` FOREIGN KEY (`freightComp_contact`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_freightComp_geo1` FOREIGN KEY (`freightComp_address1postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_freightComp_geo2` FOREIGN KEY (`freightComp_address2postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5016 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `geo`
--

DROP TABLE IF EXISTS `geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo` (
  `geo_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_postal` varchar(7) NOT NULL,
  `geo_city` varchar(45) NOT NULL,
  `geo_state` varchar(2) NOT NULL,
  `geo_country` varchar(45) NOT NULL,
  PRIMARY KEY (`geo_id`),
  UNIQUE KEY `geo_value_UNIQUE` (`geo_postal`)
) ENGINE=InnoDB AUTO_INCREMENT=29976 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loadArchiving`
--

DROP TABLE IF EXISTS `loadArchiving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loadArchiving` (
  `loadArchiving_id` int(11) NOT NULL AUTO_INCREMENT,
  `loadArchiving_parentCoId` int(11) DEFAULT NULL,
  `loadArchiving_parentCo` varchar(45) DEFAULT NULL,
  `loadArchiving_covenantId` int(11) DEFAULT NULL,
  `loadArchiving_covenantNo` varchar(45) DEFAULT NULL,
  `loadArchiving_supplier` varchar(45) DEFAULT NULL,
  `loadArchiving_supplierNo` int(11) DEFAULT NULL,
  `loadArchiving_supplierSub` varchar(45) DEFAULT NULL,
  `loadArchiving_supplierSubNo` int(11) DEFAULT NULL,
  `loadArchiving_loadNo` varchar(45) DEFAULT NULL,
  `loadArchiving_recLoc` varchar(45) DEFAULT NULL,
  `loadArchiving_recLocNo` int(11) DEFAULT NULL,
  `loadArchiving_deliveryDate` date DEFAULT NULL,
  `loadArchiving_deliveryTime` time DEFAULT NULL,
  `loadArchiving_grossWeight` int(6) DEFAULT NULL,
  `loadArchiving_tareWeight` int(6) DEFAULT NULL,
  `loadArchiving_moisture` decimal(4,2) DEFAULT NULL,
  `loadArchiving_material` int(11) DEFAULT NULL,
  `loadArchiving_materialSpecies` varchar(45) DEFAULT NULL,
  `loadArchiving_materialSpeciesNo` int(11) DEFAULT NULL,
  `loadArchiving_materialType` varchar(45) DEFAULT NULL,
  `loadArchiving_materialTypeNo` int(11) DEFAULT NULL,
  `loadArchiving_materialPrice` decimal(5,2) DEFAULT NULL,
  `loadArchiving_materialUnitDesc` varchar(45) DEFAULT NULL,
  `loadArchiving_materialUnitNo` int(11) DEFAULT NULL,
  `loadArchiving_freightCompany` varchar(45) DEFAULT NULL,
  `loadArchiving_freightCompanyNo` int(11) DEFAULT NULL,
  `loadArchiving_arbFreightCost` tinyint(1) DEFAULT NULL,
  `loadArchiving_freightCost` decimal(6,2) DEFAULT NULL,
  `loadArchiving_freightUnit` varchar(45) DEFAULT NULL,
  `loadArchiving_freightUnitNo` int(11) DEFAULT NULL,
  `loadArchiving_freightSurcharge` decimal(6,2) DEFAULT NULL,
  `loadArchiving_freightScUnit` varchar(45) DEFAULT NULL,
  `loadArchiving_freightScUnitNo` int(11) DEFAULT NULL,
  `loadArchiving_loadNotes` varchar(500) DEFAULT NULL,
  `loadArchiving_buyerNotes` varchar(500) DEFAULT NULL,
  `loadArchiving_reconciled` tinyint(1) DEFAULT NULL,
  `loadArchiving_appd` tinyint(1) DEFAULT NULL,
  `origin_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loadArchiving_id`),
  KEY `KEY` (`last_modified`),
  KEY `loadArchiving_loadNo` (`loadArchiving_loadNo`)
) ENGINE=InnoDB AUTO_INCREMENT=100619 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loadEntryTemp`
--

DROP TABLE IF EXISTS `loadEntryTemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loadEntryTemp` (
  `loadEntry_id` int(11) NOT NULL AUTO_INCREMENT,
  `loadEntry_covenant` int(11) NOT NULL,
  `loadEntry_loadNo` varchar(45) NOT NULL,
  `loadEntry_deliveryDate` date NOT NULL,
  `loadEntry_deliveryTime` time DEFAULT NULL,
  `loadEntry_grossWeight` int(6) NOT NULL,
  `loadEntry_tareWeight` int(6) NOT NULL,
  `loadEntry_moisture` decimal(4,2) NOT NULL,
  `loadEntry_notes` varchar(500) DEFAULT NULL,
  `origin_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loadEntry_id`),
  KEY `KEY` (`last_modified`),
  KEY `fk_loadEntryTemp_covenant1_idx` (`loadEntry_covenant`),
  CONSTRAINT `fk_loadEntryTemp_covenant` FOREIGN KEY (`loadEntry_covenant`) REFERENCES `covenant` (`covenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `locationSub`
--

DROP TABLE IF EXISTS `locationSub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locationSub` (
  `locationSub_id` int(11) NOT NULL AUTO_INCREMENT,
  `locationSub_parentCo` int(11) NOT NULL,
  `locationSub_name` varchar(45) NOT NULL,
  `locationSub_symbol` varchar(45) DEFAULT NULL,
  `locationSub_active` tinyint(1) DEFAULT NULL,
  `locationSub_contact` int(11) DEFAULT NULL,
  `locationSub_phone1desc` varchar(45) DEFAULT NULL,
  `locationSub_phone1` varchar(10) DEFAULT NULL,
  `locationSub_phone2desc` varchar(45) DEFAULT NULL,
  `locationSub_phone2` varchar(10) DEFAULT NULL,
  `locationSub_phone3desc` varchar(45) DEFAULT NULL,
  `locationSub_phone3` varchar(10) DEFAULT NULL,
  `locationSub_fax` varchar(10) DEFAULT NULL,
  `locationSub_address1desc` varchar(45) DEFAULT NULL,
  `locationSub_address1line1` varchar(45) DEFAULT NULL,
  `locationSub_address1line2` varchar(45) DEFAULT NULL,
  `locationSub_address1postal` varchar(7) DEFAULT NULL,
  `locationSub_address2desc` varchar(45) DEFAULT NULL,
  `locationSub_address2line1` varchar(45) DEFAULT NULL,
  `locationSub_address2line2` varchar(45) DEFAULT NULL,
  `locationSub_address2postal` varchar(7) DEFAULT NULL,
  `locationSub_notes` varchar(500) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`locationSub_id`),
  UNIQUE KEY `locationSub_name_UNIQUE` (`locationSub_name`),
  KEY `KEY` (`last_modified`),
  KEY `fk_locationSub_contact1_idx` (`locationSub_contact`),
  KEY `fk_locationSub_parentCo1_idx` (`locationSub_parentCo`),
  KEY `fk_locationSub_geo1_idx` (`locationSub_address1postal`),
  KEY `fk_locationSub_geo2_idx` (`locationSub_address2postal`),
  CONSTRAINT `fk_locationSub_contact` FOREIGN KEY (`locationSub_contact`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_locationSub_geo1` FOREIGN KEY (`locationSub_address1postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_locationSub_geo2` FOREIGN KEY (`locationSub_address2postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_locationSub_parentCo1` FOREIGN KEY (`locationSub_parentCo`) REFERENCES `parentCo` (`parentCo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_species` int(11) NOT NULL,
  `material_type` int(11) NOT NULL,
  PRIMARY KEY (`material_id`),
  KEY `fk_material_materialSpecies1_idx` (`material_species`),
  KEY `fk_material_materialType1_idx` (`material_type`),
  CONSTRAINT `fk_material_materialSpecies` FOREIGN KEY (`material_species`) REFERENCES `materialSpecies` (`materialSpecies_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_material_materialType` FOREIGN KEY (`material_type`) REFERENCES `materialType` (`materialType_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `materialSpecies`
--

DROP TABLE IF EXISTS `materialSpecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialSpecies` (
  `materialSpecies_id` int(11) NOT NULL AUTO_INCREMENT,
  `materialSpecies_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`materialSpecies_id`),
  UNIQUE KEY `materialSpecies_desc_UNIQUE` (`materialSpecies_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `materialType`
--

DROP TABLE IF EXISTS `materialType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialType` (
  `materialType_id` int(11) NOT NULL AUTO_INCREMENT,
  `materialType_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`materialType_id`),
  UNIQUE KEY `materialType_desc_UNIQUE` (`materialType_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parentCo`
--

DROP TABLE IF EXISTS `parentCo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parentCo` (
  `parentCo_id` int(11) NOT NULL,
  `parentCo_name` varchar(45) NOT NULL,
  `parentCo_contact` int(11) DEFAULT NULL,
  `parentCo_phone1desc` varchar(45) DEFAULT NULL,
  `parentCo_phone1` varchar(10) DEFAULT NULL,
  `parentCo_phone2desc` varchar(45) DEFAULT NULL,
  `parentCo_phone2` varchar(10) DEFAULT NULL,
  `parentCo_phone3desc` varchar(45) DEFAULT NULL,
  `parentCo_phone3` varchar(10) DEFAULT NULL,
  `parentCo_fax` varchar(10) DEFAULT NULL,
  `parentCo_address1desc` varchar(45) DEFAULT NULL,
  `parentCo_address1line1` varchar(45) DEFAULT NULL,
  `parentCo_address1line2` varchar(45) DEFAULT NULL,
  `parentCo_address1postal` varchar(7) DEFAULT NULL,
  `parentCo_address2desc` varchar(45) DEFAULT NULL,
  `parentCo_address2line1` varchar(45) DEFAULT NULL,
  `parentCo_address2line2` varchar(45) DEFAULT NULL,
  `parentCo_address2postal` varchar(7) DEFAULT NULL,
  `parentCo_notes` varchar(500) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`parentCo_id`),
  UNIQUE KEY `parentCo_name_UNIQUE` (`parentCo_name`),
  KEY `fk_parentCo_contact1_idx` (`parentCo_contact`),
  KEY `fk_parentCo_geo1_idx` (`parentCo_address1postal`),
  KEY `fk_parentCo_geo2_idx` (`parentCo_address2postal`),
  CONSTRAINT `fk_parentCo_contact1` FOREIGN KEY (`parentCo_contact`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_parentCo_geo1` FOREIGN KEY (`parentCo_address1postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parentCo_geo2` FOREIGN KEY (`parentCo_address2postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `remitFreq`
--

DROP TABLE IF EXISTS `remitFreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remitFreq` (
  `remitFreq_id` int(11) NOT NULL AUTO_INCREMENT,
  `remitFreq_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`remitFreq_id`),
  UNIQUE KEY `remitFreq_desc_UNIQUE` (`remitFreq_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(45) NOT NULL,
  `supplier_active` tinyint(1) DEFAULT NULL,
  `supplier_firstContact` int(11) DEFAULT NULL,
  `supplier_secondContact` int(11) DEFAULT NULL,
  `supplier_phone1desc` varchar(45) DEFAULT NULL,
  `supplier_phone1` varchar(10) DEFAULT NULL,
  `supplier_phone2desc` varchar(45) DEFAULT NULL,
  `supplier_phone2` varchar(10) DEFAULT NULL,
  `supplier_phone3desc` varchar(45) DEFAULT NULL,
  `supplier_phone3` varchar(10) DEFAULT NULL,
  `supplier_fax` varchar(10) DEFAULT NULL,
  `supplier_address1desc` varchar(45) DEFAULT NULL,
  `supplier_address1line1` varchar(45) DEFAULT NULL,
  `supplier_address1line2` varchar(45) DEFAULT NULL,
  `supplier_address1postal` varchar(7) DEFAULT NULL,
  `supplier_address2desc` varchar(45) DEFAULT NULL,
  `supplier_address2line1` varchar(45) DEFAULT NULL,
  `supplier_address2line2` varchar(45) DEFAULT NULL,
  `supplier_address2postal` varchar(7) DEFAULT NULL,
  `supplier_notes` varchar(500) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `supplier_name_UNIQUE` (`supplier_name`),
  KEY `KEY` (`last_modified`),
  KEY `fk_supplier_contact1_idx` (`supplier_firstContact`),
  KEY `fk_supplier_contact2_idx` (`supplier_secondContact`),
  KEY `fk_supplier_geo1_idx` (`supplier_address1postal`),
  KEY `fk_supplier_geo2_idx` (`supplier_address2postal`),
  CONSTRAINT `fk_supplier_firstContact` FOREIGN KEY (`supplier_firstContact`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_supplier_geo1` FOREIGN KEY (`supplier_address1postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplier_geo2` FOREIGN KEY (`supplier_address2postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplier_secondContact` FOREIGN KEY (`supplier_secondContact`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7011 DEFAULT CHARSET=latin1 KEY_BLOCK_SIZE=8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplierSub`
--

DROP TABLE IF EXISTS `supplierSub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplierSub` (
  `supplierSub_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierSub_name` varchar(45) NOT NULL,
  `supplierSub_parent` int(11) NOT NULL,
  `supplierSub_active` tinyint(1) DEFAULT NULL,
  `supplierSub_contact` int(11) DEFAULT NULL,
  `supplierSub_phone1desc` varchar(45) DEFAULT NULL,
  `supplierSub_phone1` varchar(10) DEFAULT NULL,
  `supplierSub_phone2desc` varchar(45) DEFAULT NULL,
  `supplierSub_phone2` varchar(10) DEFAULT NULL,
  `supplierSub_fax` varchar(10) DEFAULT NULL,
  `supplierSub_address1desc` varchar(45) DEFAULT NULL,
  `supplierSub_address1line1` varchar(45) DEFAULT NULL,
  `supplierSub_address1line2` varchar(45) DEFAULT NULL,
  `supplierSub_address1postal` varchar(7) DEFAULT NULL,
  `supplierSub_address2desc` varchar(45) DEFAULT NULL,
  `supplierSub_address2line1` varchar(45) DEFAULT NULL,
  `supplierSub_address2line2` varchar(45) DEFAULT NULL,
  `supplierSub_address2postal` varchar(7) DEFAULT NULL,
  `supplierSub_notes` varchar(500) DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplierSub_id`),
  UNIQUE KEY `supplierSub_name_UNIQUE` (`supplierSub_name`),
  KEY `KEY` (`last_modified`),
  KEY `fk_supplierSub_supplier1_idx` (`supplierSub_parent`),
  KEY `fk_supplierSub_contact1_idx` (`supplierSub_contact`),
  KEY `fk_supplierSub_geo1_idx` (`supplierSub_address1postal`),
  KEY `fk_supplierSub_geo2_idx` (`supplierSub_address2postal`),
  CONSTRAINT `fk_supplierSub_contact` FOREIGN KEY (`supplierSub_contact`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_supplierSub_geo1` FOREIGN KEY (`supplierSub_address1postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplierSub_geo2` FOREIGN KEY (`supplierSub_address2postal`) REFERENCES `geo` (`geo_postal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplierSub_parent` FOREIGN KEY (`supplierSub_parent`) REFERENCES `supplier` (`supplier_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9017 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timestamps`
--

DROP TABLE IF EXISTS `timestamps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timestamps` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timestamps_1`
--

DROP TABLE IF EXISTS `timestamps_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timestamps_1` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_desc` varchar(45) NOT NULL,
  `unit_symbol` varchar(45) NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unit_desc_UNIQUE` (`unit_desc`),
  UNIQUE KEY `unit_symbol` (`unit_symbol`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `LAallExcUnits`
--

/*!50001 DROP VIEW IF EXISTS `LAallExcUnits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `LAallExcUnits` AS select `loadEntryTemp`.`loadEntry_covenant` AS `loadEntry_covenant`,`covenant`.`covenant_id` AS `covenant_id`,`covenant`.`covenant_covenantNo` AS `covenant_covenantNo`,`covenant`.`covenant_parentCo` AS `covenant_parentCo`,`parentCo`.`parentCo_id` AS `parentCo_id`,`parentCo`.`parentCo_name` AS `parentCo_name`,`covenant`.`covenant_supplierSub` AS `covenant_supplierSub`,`supplierSub`.`supplierSub_id` AS `supplierSub_id`,`supplierSub`.`supplierSub_name` AS `supplierSub_name`,`supplierSub`.`supplierSub_parent` AS `supplierSub_parent`,`supplier`.`supplier_id` AS `supplier_id`,`supplier`.`supplier_name` AS `supplier_name`,`loadEntryTemp`.`loadEntry_loadNo` AS `loadEntry_loadNo`,`covenant`.`covenant_recLoc` AS `covenant_recLoc`,`locationSub`.`locationSub_id` AS `locationSub_id`,`locationSub`.`locationSub_name` AS `locationSub_name`,`loadEntryTemp`.`loadEntry_deliveryDate` AS `loadEntry_deliveryDate`,`loadEntryTemp`.`loadEntry_deliveryTime` AS `loadEntry_deliveryTime`,`loadEntryTemp`.`loadEntry_grossWeight` AS `loadEntry_grossWeight`,`loadEntryTemp`.`loadEntry_tareWeight` AS `loadEntry_tareWeight`,`loadEntryTemp`.`loadEntry_moisture` AS `loadEntry_moisture`,`covenant`.`covenant_material` AS `covenant_material`,`material`.`material_id` AS `material_id`,`material`.`material_species` AS `material_species`,`materialSpecies`.`materialSpecies_id` AS `materialSpecies_id`,`materialSpecies`.`materialSpecies_desc` AS `materialSpecies_desc`,`material`.`material_type` AS `material_type`,`materialType`.`materialType_id` AS `materialType_id`,`materialType`.`materialType_desc` AS `materialType_desc`,`covenant`.`covenant_matPrice` AS `covenant_matPrice`,`covenant`.`covenant_freightCompany` AS `covenant_freightCompany`,`freightComp`.`freightComp_id` AS `freightComp_id`,`freightComp`.`freightComp_name` AS `freightComp_name`,`covenant`.`covenant_arbFreightRate` AS `covenant_arbFreightRate`,`covenant`.`covenant_freightRate` AS `covenant_freightRate`,`covenant`.`covenant_freightSurCharge` AS `covenant_freightSurCharge`,`loadEntryTemp`.`loadEntry_notes` AS `loadEntry_notes` from (((((((((`loadEntryTemp` left join `covenant` on((`loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`))) left join `freightComp` on((`covenant`.`covenant_freightCompany` = `freightComp`.`freightComp_id`))) left join `locationSub` on((`covenant`.`covenant_recLoc` = `locationSub`.`locationSub_id`))) left join `material` on((`covenant`.`covenant_material` = `material`.`material_id`))) left join `parentCo` on((`covenant`.`covenant_parentCo` = `parentCo`.`parentCo_id`))) left join `supplierSub` on((`covenant`.`covenant_supplierSub` = `supplierSub`.`supplierSub_id`))) left join `supplier` on((`supplierSub`.`supplierSub_parent` = `supplier`.`supplier_id`))) left join `materialSpecies` on((`material`.`material_species` = `materialSpecies`.`materialSpecies_id`))) left join `materialType` on((`material`.`material_type` = `materialType`.`materialType_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `LAappend`
--

/*!50001 DROP VIEW IF EXISTS `LAappend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `LAappend` AS select `LAallExcUnits`.`loadEntry_covenant` AS `loadEntry_covenant`,`LAallExcUnits`.`covenant_id` AS `covenant_id`,`LAallExcUnits`.`covenant_covenantNo` AS `covenant_covenantNo`,`LAallExcUnits`.`covenant_parentCo` AS `covenant_parentCo`,`LAallExcUnits`.`parentCo_id` AS `parentCo_id`,`LAallExcUnits`.`parentCo_name` AS `parentCo_name`,`LAallExcUnits`.`covenant_supplierSub` AS `covenant_supplierSub`,`LAallExcUnits`.`supplierSub_id` AS `supplierSub_id`,`LAallExcUnits`.`supplierSub_name` AS `supplierSub_name`,`LAallExcUnits`.`supplierSub_parent` AS `supplierSub_parent`,`LAallExcUnits`.`supplier_id` AS `supplier_id`,`LAallExcUnits`.`supplier_name` AS `supplier_name`,`LAallExcUnits`.`covenant_recLoc` AS `covenant_recLoc`,`LAallExcUnits`.`locationSub_id` AS `locationSub_id`,`LAallExcUnits`.`locationSub_name` AS `locationSub_name`,`LAallExcUnits`.`loadEntry_deliveryDate` AS `loadEntry_deliveryDate`,`LAallExcUnits`.`loadEntry_deliveryTime` AS `loadEntry_deliveryTime`,`LAallExcUnits`.`loadEntry_grossWeight` AS `loadEntry_grossWeight`,`LAallExcUnits`.`loadEntry_tareWeight` AS `loadEntry_tareWeight`,`LAallExcUnits`.`loadEntry_moisture` AS `loadEntry_moisture`,`LAallExcUnits`.`covenant_material` AS `covenant_material`,`LAallExcUnits`.`material_id` AS `material_id`,`LAallExcUnits`.`material_species` AS `material_species`,`LAallExcUnits`.`materialSpecies_id` AS `materialSpecies_id`,`LAallExcUnits`.`materialSpecies_desc` AS `materialSpecies_desc`,`LAallExcUnits`.`material_type` AS `material_type`,`LAallExcUnits`.`materialType_id` AS `materialType_id`,`LAallExcUnits`.`materialType_desc` AS `materialType_desc`,`LAallExcUnits`.`covenant_matPrice` AS `covenant_matPrice`,`LAallExcUnits`.`covenant_freightCompany` AS `covenant_freightCompany`,`LAallExcUnits`.`freightComp_id` AS `freightComp_id`,`LAallExcUnits`.`freightComp_name` AS `freightComp_name`,`LAallExcUnits`.`covenant_arbFreightRate` AS `covenant_arbFreightRate`,`LAallExcUnits`.`covenant_freightRate` AS `covenant_freightRate`,`LAallExcUnits`.`covenant_freightSurCharge` AS `covenant_freightSurCharge`,`LAallExcUnits`.`loadEntry_notes` AS `loadEntry_notes`,`LAallExcUnits`.`loadEntry_loadNo` AS `loadEntry_loadNo`,`LAmatUnit`.`loadEntry_loadNo` AS `matUnit_loadNo`,`LAmatUnit`.`covenant_matUnit` AS `covenant_matUnit`,`LAmatUnit`.`unit_id` AS `unit_id`,`LAmatUnit`.`unit_desc` AS `unit_desc`,`LAfreightUnit`.`loadEntry_loadNo` AS `freightUnit_loadNo`,`LAfreightUnit`.`unit_id` AS `freightUnit_id`,`LAfreightUnit`.`unit_desc` AS `freightUnit_desc`,`LAfreightScUnit`.`loadEntry_loadNo` AS `freightScUnit_loadNo`,`LAfreightScUnit`.`unit_id` AS `freightScUnit_id`,`LAfreightScUnit`.`unit_desc` AS `freightScUnit_desc` from (`LAfreightScUnit` left join (`LAfreightUnit` left join (`LAmatUnit` left join `LAallExcUnits` on((`LAallExcUnits`.`loadEntry_loadNo` = `LAmatUnit`.`loadEntry_loadNo`))) on((`LAallExcUnits`.`loadEntry_loadNo` = `LAfreightUnit`.`loadEntry_loadNo`))) on((`LAallExcUnits`.`loadEntry_loadNo` = `LAfreightScUnit`.`loadEntry_loadNo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `LAfreightScUnit`
--

/*!50001 DROP VIEW IF EXISTS `LAfreightScUnit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `LAfreightScUnit` AS select `loadEntryTemp`.`loadEntry_loadNo` AS `loadEntry_loadNo`,`loadEntryTemp`.`loadEntry_covenant` AS `loadEntry_covenant`,`covenant`.`covenant_freightScUnit` AS `covenant_freightScUnit`,`unit`.`unit_id` AS `unit_id`,`unit`.`unit_desc` AS `unit_desc` from ((`loadEntryTemp` left join `covenant` on((`loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`))) left join `unit` on((`covenant`.`covenant_freightScUnit` = `unit`.`unit_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `LAfreightUnit`
--

/*!50001 DROP VIEW IF EXISTS `LAfreightUnit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `LAfreightUnit` AS select `loadEntryTemp`.`loadEntry_loadNo` AS `loadEntry_loadNo`,`loadEntryTemp`.`loadEntry_covenant` AS `loadEntry_covenant`,`covenant`.`covenant_freightUnit` AS `covenant_freightUnit`,`unit`.`unit_id` AS `unit_id`,`unit`.`unit_desc` AS `unit_desc` from ((`loadEntryTemp` left join `covenant` on((`loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`))) left join `unit` on((`covenant`.`covenant_freightUnit` = `unit`.`unit_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `LAmatUnit`
--

/*!50001 DROP VIEW IF EXISTS `LAmatUnit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `LAmatUnit` AS select `loadEntryTemp`.`loadEntry_loadNo` AS `loadEntry_loadNo`,`loadEntryTemp`.`loadEntry_covenant` AS `loadEntry_covenant`,`covenant`.`covenant_matUnit` AS `covenant_matUnit`,`unit`.`unit_id` AS `unit_id`,`unit`.`unit_desc` AS `unit_desc` from ((`loadEntryTemp` left join `covenant` on((`loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`))) left join `unit` on((`covenant`.`covenant_matUnit` = `unit`.`unit_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `arcAll`
--

/*!50001 DROP VIEW IF EXISTS `arcAll`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `arcAll` AS select `loadArchiving`.`loadArchiving_id` AS `loadArchiving_id`,`loadArchiving`.`loadArchiving_parentCoId` AS `loadArchiving_parentCoId`,`loadArchiving`.`loadArchiving_parentCo` AS `loadArchiving_parentCo`,`loadArchiving`.`loadArchiving_covenantId` AS `loadArchiving_covenantId`,`loadArchiving`.`loadArchiving_covenantNo` AS `loadArchiving_covenantNo`,`loadArchiving`.`loadArchiving_supplier` AS `loadArchiving_supplier`,`loadArchiving`.`loadArchiving_supplierNo` AS `loadArchiving_supplierNo`,`loadArchiving`.`loadArchiving_supplierSub` AS `loadArchiving_supplierSub`,`loadArchiving`.`loadArchiving_supplierSubNo` AS `loadArchiving_supplierSubNo`,`loadArchiving`.`loadArchiving_loadNo` AS `loadArchiving_loadNo`,`loadArchiving`.`loadArchiving_recLoc` AS `loadArchiving_recLoc`,`loadArchiving`.`loadArchiving_recLocNo` AS `loadArchiving_recLocNo`,`loadArchiving`.`loadArchiving_deliveryDate` AS `loadArchiving_deliveryDate`,`loadArchiving`.`loadArchiving_deliveryTime` AS `loadArchiving_deliveryTime`,`loadArchiving`.`loadArchiving_grossWeight` AS `loadArchiving_grossWeight`,`loadArchiving`.`loadArchiving_tareWeight` AS `loadArchiving_tareWeight`,`loadArchiving`.`loadArchiving_moisture` AS `loadArchiving_moisture`,`loadArchiving`.`loadArchiving_material` AS `loadArchiving_material`,`loadArchiving`.`loadArchiving_materialSpecies` AS `loadArchiving_materialSpecies`,`loadArchiving`.`loadArchiving_materialSpeciesNo` AS `loadArchiving_materialSpeciesNo`,`loadArchiving`.`loadArchiving_materialType` AS `loadArchiving_materialType`,`loadArchiving`.`loadArchiving_materialTypeNo` AS `loadArchiving_materialTypeNo`,`loadArchiving`.`loadArchiving_materialPrice` AS `loadArchiving_materialPrice`,`loadArchiving`.`loadArchiving_materialUnitDesc` AS `loadArchiving_materialUnitDesc`,`loadArchiving`.`loadArchiving_materialUnitNo` AS `loadArchiving_materialUnitNo`,`loadArchiving`.`loadArchiving_freightCompany` AS `loadArchiving_freightCompany`,`loadArchiving`.`loadArchiving_freightCompanyNo` AS `loadArchiving_freightCompanyNo`,`loadArchiving`.`loadArchiving_arbFreightCost` AS `loadArchiving_arbFreightCost`,`loadArchiving`.`loadArchiving_freightCost` AS `loadArchiving_freightCost`,`loadArchiving`.`loadArchiving_freightUnit` AS `loadArchiving_freightUnit`,`loadArchiving`.`loadArchiving_freightUnitNo` AS `loadArchiving_freightUnitNo`,`loadArchiving`.`loadArchiving_freightSurcharge` AS `loadArchiving_freightSurcharge`,`loadArchiving`.`loadArchiving_freightScUnit` AS `loadArchiving_freightScUnit`,`loadArchiving`.`loadArchiving_freightScUnitNo` AS `loadArchiving_freightScUnitNo` from `loadArchiving` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `arcName`
--

/*!50001 DROP VIEW IF EXISTS `arcName`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `arcName` AS select `loadArchiving`.`loadArchiving_id` AS `loadArchiving_id`,`loadArchiving`.`loadArchiving_parentCo` AS `loadArchiving_parentCo`,`loadArchiving`.`loadArchiving_covenantId` AS `loadArchiving_covenantId`,`loadArchiving`.`loadArchiving_covenantNo` AS `loadArchiving_covenantNo`,`loadArchiving`.`loadArchiving_supplier` AS `loadArchiving_supplier`,`loadArchiving`.`loadArchiving_supplierSub` AS `loadArchiving_supplierSub`,`loadArchiving`.`loadArchiving_loadNo` AS `loadArchiving_loadNo`,`loadArchiving`.`loadArchiving_recLoc` AS `loadArchiving_recLoc`,`loadArchiving`.`loadArchiving_deliveryDate` AS `loadArchiving_deliveryDate`,`loadArchiving`.`loadArchiving_deliveryTime` AS `loadArchiving_deliveryTime`,`loadArchiving`.`loadArchiving_grossWeight` AS `loadArchiving_grossWeight`,`loadArchiving`.`loadArchiving_tareWeight` AS `loadArchiving_tareWeight`,`loadArchiving`.`loadArchiving_moisture` AS `loadArchiving_moisture`,`loadArchiving`.`loadArchiving_material` AS `loadArchiving_material`,`loadArchiving`.`loadArchiving_materialSpecies` AS `loadArchiving_materialSpecies`,`loadArchiving`.`loadArchiving_materialType` AS `loadArchiving_materialType`,`loadArchiving`.`loadArchiving_materialPrice` AS `loadArchiving_materialPrice`,`loadArchiving`.`loadArchiving_materialUnitDesc` AS `loadArchiving_materialUnitDesc`,`loadArchiving`.`loadArchiving_freightCompany` AS `loadArchiving_freightCompany`,`loadArchiving`.`loadArchiving_arbFreightCost` AS `loadArchiving_arbFreightCost`,`loadArchiving`.`loadArchiving_freightCost` AS `loadArchiving_freightCost`,`loadArchiving`.`loadArchiving_freightUnit` AS `loadArchiving_freightUnit`,`loadArchiving`.`loadArchiving_freightSurcharge` AS `loadArchiving_freightSurcharge`,`loadArchiving`.`loadArchiving_freightScUnit` AS `loadArchiving_freightScUnit` from `loadArchiving` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `arcNumeric`
--

/*!50001 DROP VIEW IF EXISTS `arcNumeric`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`phpmyadmin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `arcNumeric` AS select `loadArchiving`.`loadArchiving_id` AS `loadArchiving_id`,`loadArchiving`.`loadArchiving_parentCoId` AS `loadArchiving_parentCoId`,`loadArchiving`.`loadArchiving_covenantId` AS `loadArchiving_covenantId`,`loadArchiving`.`loadArchiving_covenantNo` AS `loadArchiving_covenantNo`,`loadArchiving`.`loadArchiving_supplierNo` AS `loadArchiving_supplierNo`,`loadArchiving`.`loadArchiving_supplierSubNo` AS `loadArchiving_supplierSubNo`,`loadArchiving`.`loadArchiving_loadNo` AS `loadArchiving_loadNo`,`loadArchiving`.`loadArchiving_recLocNo` AS `loadArchiving_recLocNo`,`loadArchiving`.`loadArchiving_deliveryDate` AS `loadArchiving_deliveryDate`,`loadArchiving`.`loadArchiving_deliveryTime` AS `loadArchiving_deliveryTime`,`loadArchiving`.`loadArchiving_grossWeight` AS `loadArchiving_grossWeight`,`loadArchiving`.`loadArchiving_tareWeight` AS `loadArchiving_tareWeight`,`loadArchiving`.`loadArchiving_moisture` AS `loadArchiving_moisture`,`loadArchiving`.`loadArchiving_material` AS `loadArchiving_material`,`loadArchiving`.`loadArchiving_materialSpeciesNo` AS `loadArchiving_materialSpeciesNo`,`loadArchiving`.`loadArchiving_materialTypeNo` AS `loadArchiving_materialTypeNo`,`loadArchiving`.`loadArchiving_materialPrice` AS `loadArchiving_materialPrice`,`loadArchiving`.`loadArchiving_materialUnitNo` AS `loadArchiving_materialUnitNo`,`loadArchiving`.`loadArchiving_freightCompanyNo` AS `loadArchiving_freightCompanyNo`,`loadArchiving`.`loadArchiving_arbFreightCost` AS `loadArchiving_arbFreightCost`,`loadArchiving`.`loadArchiving_freightCost` AS `loadArchiving_freightCost`,`loadArchiving`.`loadArchiving_freightUnitNo` AS `loadArchiving_freightUnitNo`,`loadArchiving`.`loadArchiving_freightSurcharge` AS `loadArchiving_freightSurcharge`,`loadArchiving`.`loadArchiving_freightScUnitNo` AS `loadArchiving_freightScUnitNo` from `loadArchiving` */;
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

-- Dump completed on 2020-01-07  1:01:57
