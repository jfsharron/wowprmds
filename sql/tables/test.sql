USE test;
CREATE TABLE IF NOT EXISTS `test`.`main` (
  `main_id` INT(11) NOT NULL,
  `main_vendorName` VARCHAR(45) NULL,
  `main2` VARCHAR(45) NULL,
  `main3` VARCHAR(45) NULL,
  `main4` VARCHAR(45) NULL,
  PRIMARY KEY (`main_id`));


CREATE TABLE IF NOT EXISTS `test`.`covenant` (
  `covenant_id` INT(11) NOT NULL AUTO_INCREMENT,
  `covenant_name` VARCHAR(45) NULL,
  `covenant_vendorName` VARCHAR(45) NULL,
  PRIMARY KEY (`covenant_id`),
  INDEX `fk_covenant_main1_idx` (`covenant_vendorName` ASC),
  CONSTRAINT `fk_covenant_main1`
    FOREIGN KEY (`covenant_vendorName`)
    REFERENCES `mydb`.`main` (`main_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `test`.`entry` (
  `entry_id` INT(11) NOT NULL,
  `entry1` VARCHAR(45) NULL,
  `entry2` VARCHAR(45) NULL,
  `covenant_name` INT(11) NULL,
  `gross` INT(6) NULL,
  `tare` INT(6) NULL,
  PRIMARY KEY (`entry_id`),
  INDEX `fk_entry_covenant_idx` (`covenant_name` ASC),
  CONSTRAINT `fk_entry_covenant`
    FOREIGN KEY (`covenant_name`)
    REFERENCES `mydb`.`covenant` (`covenant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE IF NOT EXISTS `test`.`archive` (
  `archive_id` INT(11) NOT NULL AUTO_INCREMENT,
  `gross` INT(11) NULL,
  `tare` INT(11) NULL,
  `covenant_name` INT(11) NULL,
  `vendor_name` INT(11) NULL,
  PRIMARY KEY (`archive_id`),
  INDEX `fk_archive_entry1_idx` (`gross` ASC),
  INDEX `fk_archive_entry2_idx` (`tare` ASC),
  INDEX `fk_archive_covenant1_idx` (`covenant_name` ASC),
  INDEX `fk_archive_main1_idx` (`vendor_name` ASC),
  CONSTRAINT `fk_archive_entry1`
    FOREIGN KEY (`gross`)
    REFERENCES `mydb`.`entry` (`entry_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_archive_entry2`
    FOREIGN KEY (`tare`)
    REFERENCES `mydb`.`entry` (`entry_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_archive_covenant1`
    FOREIGN KEY (`covenant_name`)
    REFERENCES `mydb`.`covenant` (`covenant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_archive_main1`
    FOREIGN KEY (`vendor_name`)
    REFERENCES `mydb`.`main` (`main_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

