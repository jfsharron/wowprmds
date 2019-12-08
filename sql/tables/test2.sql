USE rmds;

CREATE TABLE IF NOT EXISTS `rmds`.`test4` (
  `supplier_id` INT(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` VARCHAR(45) NULL,
  `supplier_active` TINYINT(1) NULL,
  `supplier_first_contact` INT(11) NULL,
  `supplier_second_contact` INT(11) NULL,
  `suppler_address` INT(11) NULL,
  `supplier_notes` VARCHAR(500) NULL,
  `last_modified` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`supplier_id`),
  INDEX `KEY` (`last_modified` ASC) );