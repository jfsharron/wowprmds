-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema wowprmds
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema wowprmds
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wowprmds` DEFAULT CHARACTER SET utf8 ;
USE `wowprmds` ;

-- -----------------------------------------------------
-- Table `wowprmds`.`geo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`geo` (
  `geo_id` INT(11) NOT NULL AUTO_INCREMENT,
  `geo_postal` VARCHAR(7) NOT NULL,
  `geo_city` VARCHAR(45) NOT NULL,
  `geo_state` VARCHAR(2) NOT NULL,
  `geo_country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`geo_id`),
  UNIQUE INDEX `geo_value_UNIQUE` (`geo_postal` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`contact` (
  `contact_id` INT(11) NOT NULL AUTO_INCREMENT,
  `contact_last` VARCHAR(45) NOT NULL,
  `contact_first` VARCHAR(45) NOT NULL,
  `contact_email` VARCHAR(45) NULL,
  `contact_phone1desc` VARCHAR(45) NULL,
  `contact_phone1` INT(10) NULL,
  `contact_phone2desc` VARCHAR(45) NULL,
  `contact_phone2` INT(10) NULL,
  `contact_phone3desc` VARCHAR(45) NULL,
  `contact_phone3` INT(10) NULL,
  `contact_fax` INT(10) NULL,
  `contact_address1desc` VARCHAR(45) NULL,
  `contact_address1line1` VARCHAR(45) NULL,
  `contact_address1line2` VARCHAR(45) NULL,
  `contact_address1postal` VARCHAR(7) NULL,
  `contact_address2desc` VARCHAR(45) NULL,
  `contact_address2line1` VARCHAR(45) NULL,
  `contact_address2line2` VARCHAR(45) NULL,
  `contact_address2postal` VARCHAR(7) NULL,
  `contact_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX `KEY` (`last_modified` ASC),
  PRIMARY KEY (`contact_id`),
  INDEX `fk_contact_geo1_idx` (`contact_address1postal` ASC),
  INDEX `fk_contact_geo2_idx` (`contact_address2postal` ASC),
  INDEX `contact_last` (`contact_last` ASC),
  CONSTRAINT `fk_contact_geo1`
    FOREIGN KEY (`contact_address1postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contact_geo2`
    FOREIGN KEY (`contact_address2postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3000;


-- -----------------------------------------------------
-- Table `wowprmds`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`supplier` (
  `supplier_id` INT(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` VARCHAR(45) NOT NULL,
  `supplier_active` TINYINT(1) NULL,
  `supplier_firstContact` INT(11) NULL,
  `supplier_secondContact` INT(11) NULL,
  `supplier_phone1desc` VARCHAR(45) NULL,
  `supplier_phone1` VARCHAR(10) NULL,
  `supplier_phone2desc` VARCHAR(45) NULL,
  `supplier_phone2` VARCHAR(10) NULL,
  `supplier_phone3desc` VARCHAR(45) NULL,
  `supplier_phone3` VARCHAR(10) NULL,
  `supplier_fax` VARCHAR(10) NULL,
  `supplier_address1desc` VARCHAR(45) NULL,
  `supplier_address1line1` VARCHAR(45) NULL,
  `supplier_address1line2` VARCHAR(45) NULL,
  `supplier_address1postal` VARCHAR(7) NULL,
  `supplier_address2desc` VARCHAR(45) NULL,
  `supplier_address2line1` VARCHAR(45) NULL,
  `supplier_address2line2` VARCHAR(45) NULL,
  `supplier_address2postal` VARCHAR(7) NULL,
  `supplier_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplier_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `fk_supplier_contact1_idx` (`supplier_firstContact` ASC),
  INDEX `fk_supplier_contact2_idx` (`supplier_secondContact` ASC),
  UNIQUE INDEX `supplier_name_UNIQUE` (`supplier_name` ASC),
  INDEX `fk_supplier_geo1_idx` (`supplier_address1postal` ASC),
  INDEX `fk_supplier_geo2_idx` (`supplier_address2postal` ASC),
  CONSTRAINT `fk_supplier_firstContact`
    FOREIGN KEY (`supplier_firstContact`)
    REFERENCES `wowprmds`.`contact` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_supplier_secondContact`
    FOREIGN KEY (`supplier_secondContact`)
    REFERENCES `wowprmds`.`contact` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_supplier_geo1`
    FOREIGN KEY (`supplier_address1postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplier_geo2`
    FOREIGN KEY (`supplier_address2postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 7000
COMMENT = '		'
KEY_BLOCK_SIZE = 8;


-- -----------------------------------------------------
-- Table `wowprmds`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `wowprmds`.`supplierSub`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`supplierSub` (
  `supplierSub_id` INT(11) NOT NULL AUTO_INCREMENT,
  `supplierSub_name` VARCHAR(45) NOT NULL,
  `supplierSub_parent` INT(11) NOT NULL,
  `supplierSub_active` TINYINT(1) NULL,
  `supplierSub_contact` INT(11) NULL,
  `supplierSub_phone1desc` VARCHAR(45) NULL,
  `supplierSub_phone1` VARCHAR(10) NULL,
  `supplierSub_phone2desc` VARCHAR(45) NULL,
  `supplierSub_phone2` VARCHAR(10) NULL,
  `supplierSub_fax` VARCHAR(10) NULL,
  `supplierSub_address1desc` VARCHAR(45) NULL,
  `supplierSub_address1line1` VARCHAR(45) NULL,
  `supplierSub_address1line2` VARCHAR(45) NULL,
  `supplierSub_address1postal` VARCHAR(7) NULL,
  `supplierSub_address2desc` VARCHAR(45) NULL,
  `supplierSub_address2line1` VARCHAR(45) NULL,
  `supplierSub_address2line2` VARCHAR(45) NULL,
  `supplierSub_address2postal` VARCHAR(7) NULL,
  `supplierSub_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplierSub_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `fk_supplierSub_supplier1_idx` (`supplierSub_parent` ASC),
  INDEX `fk_supplierSub_contact1_idx` (`supplierSub_contact` ASC),
  UNIQUE INDEX `supplierSub_name_UNIQUE` (`supplierSub_name` ASC),
  INDEX `fk_supplierSub_geo1_idx` (`supplierSub_address1postal` ASC),
  INDEX `fk_supplierSub_geo2_idx` (`supplierSub_address2postal` ASC),
  CONSTRAINT `fk_supplierSub_parent`
    FOREIGN KEY (`supplierSub_parent`)
    REFERENCES `wowprmds`.`supplier` (`supplier_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_supplierSub_contact`
    FOREIGN KEY (`supplierSub_contact`)
    REFERENCES `wowprmds`.`contact` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_supplierSub_geo1`
    FOREIGN KEY (`supplierSub_address1postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplierSub_geo2`
    FOREIGN KEY (`supplierSub_address2postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 9000;


-- -----------------------------------------------------
-- Table `wowprmds`.`freightComp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`freightComp` (
  `freightComp_id` INT(11) NOT NULL AUTO_INCREMENT,
  `freightComp_name` VARCHAR(45) NOT NULL,
  `freightComp_active` TINYINT(1) NULL,
  `freightComp_contact` INT(11) NULL,
  `freightComp_phone1desc` VARCHAR(45) NULL,
  `freightComp_phone1` VARCHAR(10) NULL,
  `freightComp_phone2desc` VARCHAR(45) NULL,
  `freightComp_phone2` VARCHAR(10) NULL,
  `freightComp_fax` VARCHAR(10) NULL,
  `freightComp_address1desc` VARCHAR(45) NULL,
  `freightComp_address1line1` VARCHAR(45) NULL,
  `freightComp_address1line2` VARCHAR(45) NULL,
  `freightComp_address1postal` VARCHAR(7) NULL,
  `freightComp_address2desc` VARCHAR(45) NULL,
  `freightComp_address2line1` VARCHAR(45) NULL,
  `freightComp_address2line2` VARCHAR(45) NULL,
  `freightComp_address2postal` VARCHAR(7) NULL,
  `freightComp_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`freightComp_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `fk_freightComp_contact1_idx` (`freightComp_contact` ASC),
  UNIQUE INDEX `freightComp_name_UNIQUE` (`freightComp_name` ASC),
  INDEX `fk_freightComp_geo1_idx` (`freightComp_address1postal` ASC),
  INDEX `fk_freightComp_geo2_idx` (`freightComp_address2postal` ASC),
  CONSTRAINT `fk_freightComp_contact`
    FOREIGN KEY (`freightComp_contact`)
    REFERENCES `wowprmds`.`contact` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_freightComp_geo1`
    FOREIGN KEY (`freightComp_address1postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_freightComp_geo2`
    FOREIGN KEY (`freightComp_address2postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5000;


-- -----------------------------------------------------
-- Table `wowprmds`.`unit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`unit` (
  `unit_id` INT(11) NOT NULL AUTO_INCREMENT,
  `unit_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE INDEX `unit_desc_UNIQUE` (`unit_desc` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`materialSpecies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`materialSpecies` (
  `materialSpecies_id` INT(11) NOT NULL AUTO_INCREMENT,
  `materialSpecies_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`materialSpecies_id`),
  UNIQUE INDEX `materialSpecies_desc_UNIQUE` (`materialSpecies_desc` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`materialType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`materialType` (
  `materialType_id` INT(11) NOT NULL AUTO_INCREMENT,
  `materialType_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`materialType_id`),
  UNIQUE INDEX `materialType_desc_UNIQUE` (`materialType_desc` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`material`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`material` (
  `material_id` INT(11) NOT NULL AUTO_INCREMENT,
  `material_species` INT(11) NOT NULL,
  `material_type` INT(11) NOT NULL,
  PRIMARY KEY (`material_id`),
  INDEX `fk_material_materialSpecies1_idx` (`material_species` ASC),
  INDEX `fk_material_materialType1_idx` (`material_type` ASC),
  CONSTRAINT `fk_material_materialSpecies`
    FOREIGN KEY (`material_species`)
    REFERENCES `wowprmds`.`materialSpecies` (`materialSpecies_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_material_materialType`
    FOREIGN KEY (`material_type`)
    REFERENCES `wowprmds`.`materialType` (`materialType_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`remitFreq`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`remitFreq` (
  `remitFreq_id` INT NOT NULL AUTO_INCREMENT,
  `remitFreq_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`remitFreq_id`),
  UNIQUE INDEX `remitFreq_desc_UNIQUE` (`remitFreq_desc` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`parentCo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`parentCo` (
  `parentCo_id` INT(11) NOT NULL,
  `parentCo_name` VARCHAR(45) NOT NULL,
  `parentCo_contact` INT(11) NULL,
  `parentCo_phone1desc` VARCHAR(45) NULL,
  `parentCo_phone1` VARCHAR(10) NULL,
  `parentCo_phone2desc` VARCHAR(45) NULL,
  `parentCo_phone2` VARCHAR(10) NULL,
  `parentCo_phone3desc` VARCHAR(45) NULL,
  `parentCo_phone3` VARCHAR(10) NULL,
  `parentCo_fax` VARCHAR(10) NULL,
  `parentCo_address1desc` VARCHAR(45) NULL,
  `parentCo_address1line1` VARCHAR(45) NULL,
  `parentCo_address1line2` VARCHAR(45) NULL,
  `parentCo_address1postal` VARCHAR(7) NULL,
  `parentCo_address2desc` VARCHAR(45) NULL,
  `parentCo_address2line1` VARCHAR(45) NULL,
  `parentCo_address2line2` VARCHAR(45) NULL,
  `parentCo_address2postal` VARCHAR(7) NULL,
  `parentCo_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`parentCo_id`),
  UNIQUE INDEX `parentCo_name_UNIQUE` (`parentCo_name` ASC),
  INDEX `fk_parentCo_contact1_idx` (`parentCo_contact` ASC),
  INDEX `fk_parentCo_geo1_idx` (`parentCo_address1postal` ASC),
  INDEX `fk_parentCo_geo2_idx` (`parentCo_address2postal` ASC),
  CONSTRAINT `fk_parentCo_contact1`
    FOREIGN KEY (`parentCo_contact`)
    REFERENCES `wowprmds`.`contact` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_parentCo_geo1`
    FOREIGN KEY (`parentCo_address1postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parentCo_geo2`
    FOREIGN KEY (`parentCo_address2postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`locationSub`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`locationSub` (
  `locationSub_id` INT(11) NOT NULL AUTO_INCREMENT,
  `locationSub_parentCo` INT(11) NOT NULL,
  `locationSub_name` VARCHAR(45) NOT NULL,
  `locationSub_symbol` VARCHAR(45) NULL,
  `locationSub_active` TINYINT(1) NULL,
  `locationSub_contact` INT(11) NULL,
  `locationSub_phone1desc` VARCHAR(45) NULL,
  `locationSub_phone1` VARCHAR(10) NULL,
  `locationSub_phone2desc` VARCHAR(45) NULL,
  `locationSub_phone2` VARCHAR(10) NULL,
  `locationSub_phone3desc` VARCHAR(45) NULL,
  `locationSub_phone3` VARCHAR(10) NULL,
  `locationSub_fax` VARCHAR(10) NULL,
  `locationSub_address1desc` VARCHAR(45) NULL,
  `locationSub_address1line1` VARCHAR(45) NULL,
  `locationSub_address1line2` VARCHAR(45) NULL,
  `locationSub_address1postal` VARCHAR(7) NULL,
  `locationSub_address2desc` VARCHAR(45) NULL,
  `locationSub_address2line1` VARCHAR(45) NULL,
  `locationSub_address2line2` VARCHAR(45) NULL,
  `locationSub_address2postal` VARCHAR(7) NULL,
  `locationSub_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`locationSub_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `fk_locationSub_contact1_idx` (`locationSub_contact` ASC),
  UNIQUE INDEX `locationSub_name_UNIQUE` (`locationSub_name` ASC),
  INDEX `fk_locationSub_parentCo1_idx` (`locationSub_parentCo` ASC),
  INDEX `fk_locationSub_geo1_idx` (`locationSub_address1postal` ASC),
  INDEX `fk_locationSub_geo2_idx` (`locationSub_address2postal` ASC),
  CONSTRAINT `fk_locationSub_contact`
    FOREIGN KEY (`locationSub_contact`)
    REFERENCES `wowprmds`.`contact` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_locationSub_parentCo1`
    FOREIGN KEY (`locationSub_parentCo`)
    REFERENCES `wowprmds`.`parentCo` (`parentCo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_locationSub_geo1`
    FOREIGN KEY (`locationSub_address1postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_locationSub_geo2`
    FOREIGN KEY (`locationSub_address2postal`)
    REFERENCES `wowprmds`.`geo` (`geo_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2;


-- -----------------------------------------------------
-- Table `wowprmds`.`covenant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`covenant` (
  `covenant_id` INT(11) NOT NULL AUTO_INCREMENT,
  `covenant_active` TINYINT(1) NULL,
  `covenant_covenantNo` VARCHAR(45) NOT NULL,
  `covenant_revision` VARCHAR(45) NULL,
  `covenant_revisionDate` DATE NULL,
  `covenant_revisionDetails` VARCHAR(500) NULL,
  `covenant_variant` VARCHAR(45) NULL,
  `covenant_variantDetails` VARCHAR(500) NULL,
  `covenant_supplierSub` INT(11) NOT NULL,
  `covenant_material` INT(11) NULL,
  `covenant_recLoc` INT(11) NULL,
  `covenant_matPrice` DECIMAL(5,2) NULL,
  `covenant_matUnit` INT(11) NULL,
  `covenant_remitFreq` INT(11) NULL,
  `covenant_freightFobRec` TINYINT(1) NULL,
  `covenant_freightCompany` INT(11) NULL,
  `covenant_freightUnit` INT(11) NULL,
  `covenant_freightRate` DECIMAL(6,2) NULL,
  `covenant_freightSurCharge` DECIMAL(6,2) NULL,
  `covenant_freightScUnit` INT(11) NULL,
  `covenant_freightScLastUpdate` DATE NULL,
  `covenant_freightRemitFreq` INT(11) NULL,
  `covenant_notes` VARCHAR(500) NULL,
  `origin_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`covenant_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `fk_contract_supplierSub1_idx` (`covenant_supplierSub` ASC),
  INDEX `fk_contract_locationSub1_idx` (`covenant_recLoc` ASC),
  INDEX `fk_contract_unit1_idx` (`covenant_matUnit` ASC),
  INDEX `fk_contract_remitFreq1_idx` (`covenant_remitFreq` ASC),
  INDEX `fk_contract_freightComp1_idx` (`covenant_freightCompany` ASC),
  INDEX `fk_contract_unit2_idx` (`covenant_freightUnit` ASC),
  INDEX `fk_contract_remitFreq2_idx` (`covenant_freightRemitFreq` ASC),
  INDEX `fk_contract_material1_idx` (`covenant_material` ASC),
  INDEX `fk_contract_unit3_idx` (`covenant_freightScUnit` ASC),
  UNIQUE INDEX `covenant_covenantNo_UNIQUE` (`covenant_covenantNo` ASC),
  CONSTRAINT `fk_covenant_supplierSub`
    FOREIGN KEY (`covenant_supplierSub`)
    REFERENCES `wowprmds`.`supplierSub` (`supplierSub_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_locationSub`
    FOREIGN KEY (`covenant_recLoc`)
    REFERENCES `wowprmds`.`locationSub` (`locationSub_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_matUnit`
    FOREIGN KEY (`covenant_matUnit`)
    REFERENCES `wowprmds`.`unit` (`unit_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_remitFreq`
    FOREIGN KEY (`covenant_remitFreq`)
    REFERENCES `wowprmds`.`remitFreq` (`remitFreq_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightComp`
    FOREIGN KEY (`covenant_freightCompany`)
    REFERENCES `wowprmds`.`freightComp` (`freightComp_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightUnit`
    FOREIGN KEY (`covenant_freightUnit`)
    REFERENCES `wowprmds`.`unit` (`unit_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightRemitFreq`
    FOREIGN KEY (`covenant_freightRemitFreq`)
    REFERENCES `wowprmds`.`remitFreq` (`remitFreq_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_material`
    FOREIGN KEY (`covenant_material`)
    REFERENCES `wowprmds`.`material` (`material_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_covenant_freightScUnit`
    FOREIGN KEY (`covenant_freightScUnit`)
    REFERENCES `wowprmds`.`unit` (`unit_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 2000000;


-- -----------------------------------------------------
-- Table `wowprmds`.`loadArchiving`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`loadArchiving` (
  `loadArchiving_id` INT(11) NOT NULL AUTO_INCREMENT,
  `loadArchiving_covenantNo` VARCHAR(45) NOT NULL,
  `loadArchiving_supplier` VARCHAR(45) NOT NULL,
  `loadArchiving_supplierSub` VARCHAR(45) NOT NULL,
  `loadArchiving_loadNo` VARCHAR(45) NOT NULL,
  `loadArchiving_recLoc` VARCHAR(45) NOT NULL,
  `loadArchiving_deliveryDate` DATE NOT NULL,
  `loadArchiving_deliveryTime` TIME NULL,
  `loadArchiving_grossWeight` INT(6) NOT NULL,
  `loadArchiving_tareWeight` INT(6) NOT NULL,
  `loadArchiving_moisture` DECIMAL(4,2) NOT NULL,
  `loadArchiving_material` INT(11) NOT NULL,
  `loadArchiving_materialPrice` DECIMAL(5,2) NOT NULL,
  `loadArchiving_materialUnit` VARCHAR(45) NOT NULL,
  `loadArchiving_freightCompany` VARCHAR(45) NOT NULL,
  `loadArchiving_freightCost` DECIMAL(6,2) NOT NULL,
  `loadArchiving_freightUnit` VARCHAR(45) NOT NULL,
  `loadArchiving_freightSurcharge` DECIMAL(6,2) NOT NULL,
  `loadArchiving_freightScUnit` VARCHAR(45) NULL,
  `loadArchiving_loadNotes` VARCHAR(500) NULL,
  `loadArchiving_buyerNotes` VARCHAR(500) NULL,
  `loadArchiving_reconciled` TINYINT(1) NULL,
  `origin_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loadArchiving_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `loadArchiving_loadNo` (`loadArchiving_loadNo` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 100000;


-- -----------------------------------------------------
-- Table `wowprmds`.`loadEntryTemp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`loadEntryTemp` (
  `loadEntry_id` INT(11) NOT NULL AUTO_INCREMENT,
  `loadEntry_covenant` INT(11) NOT NULL,
  `loadEntry_loadNo` VARCHAR(45) NOT NULL,
  `loadEntry_deliveryDate` DATE NOT NULL,
  `loadEntry_deliveryTime` TIME NULL,
  `loadEntry_grossWeight` INT(6) NOT NULL,
  `loadEntry_tareWeight` INT(6) NOT NULL,
  `loadEntry_moisture` DECIMAL(4,2) NOT NULL,
  `loadEntry_notes` VARCHAR(500) NULL,
  `origin_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loadEntry_id`),
  INDEX `KEY` (`last_modified` ASC),
  INDEX `fk_loadEntryTemp_covenant1_idx` (`loadEntry_covenant` ASC),
  CONSTRAINT `fk_loadEntryTemp_covenant`
    FOREIGN KEY (`loadEntry_covenant`)
    REFERENCES `wowprmds`.`covenant` (`covenant_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wowprmds`.`timestamps_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wowprmds`.`timestamps_1` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
