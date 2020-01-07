--  all exclude units
USE wowprmds;

SELECT `loadEntryTemp`.`loadEntry_covenant`, `covenant`.`covenant_id`, `covenant`.`covenant_covenantNo`, `covenant`.`covenant_parentCo`, `parentCo`.`parentCo_id`, `parentCo`.`parentCo_name`, `covenant`.`covenant_supplierSub`, `supplierSub`.`supplierSub_id`, `supplierSub`.`supplierSub_name`, `supplierSub`.`supplierSub_parent`, `supplier`.`supplier_id`, `supplier`.`supplier_name`, `loadEntryTemp`.`loadEntry_loadNo`, `covenant`.`covenant_recLoc`, `locationSub`.`locationSub_id`, `locationSub`.`locationSub_name`, `loadEntryTemp`.`loadEntry_deliveryDate`, `loadEntryTemp`.`loadEntry_deliveryTime`, `loadEntryTemp`.`loadEntry_grossWeight`, `loadEntryTemp`.`loadEntry_tareWeight`, `loadEntryTemp`.`loadEntry_moisture`, `covenant`.`covenant_material`, `material`.`material_id`, `material`.`material_species`, `materialSpecies`.`materialSpecies_id`, `materialSpecies`.`materialSpecies_desc`, `material`.`material_type`, `materialType`.`materialType_id`, `materialType`.`materialType_desc`, `covenant`.`covenant_matPrice`, `covenant`.`covenant_freightCompany`, `freightComp`.`freightComp_id`, `freightComp`.`freightComp_name`, `covenant`.`covenant_arbFreightRate`, `covenant`.`covenant_freightRate`, `covenant`.`covenant_freightSurCharge`, `loadEntryTemp`.`loadEntry_notes`
FROM `covenant`
    RIGHT JOIN `loadEntryTemp` ON `loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`
    LEFT JOIN `freightComp` ON `covenant`.`covenant_freightCompany` = `freightComp`.`freightComp_id`
    LEFT JOIN `locationSub` ON `covenant`.`covenant_recLoc` = `locationSub`.`locationSub_id`
    LEFT JOIN `material` ON `covenant`.`covenant_material` = `material`.`material_id`
    LEFT JOIN `parentCo` ON `covenant`.`covenant_parentCo` = `parentCo`.`parentCo_id`
    LEFT JOIN `supplierSub` ON `covenant`.`covenant_supplierSub` = `supplierSub`.`supplierSub_id`
    LEFT JOIN `supplier` ON `supplierSub`.`supplierSub_parent` = `supplier`.`supplier_id`
    LEFT JOIN `materialSpecies` ON `material`.`material_species` = `materialSpecies`.`materialSpecies_id`
    LEFT JOIN `materialType` ON `material`.`material_type` = `materialType`.`materialType_id`
--  -----------------------------------------------------------------------
--  matUnit
	
USE wowprmds;

SELECT `loadEntryTemp`.`loadEntry_loadNo`, `loadEntryTemp`.`loadEntry_covenant`, `covenant`.`covenant_matUnit`, `unit`.`unit_id`, `unit`.`unit_desc`
FROM `covenant`
    RIGHT JOIN `loadEntryTemp` ON `loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`
    LEFT JOIN `unit` ON `covenant`.`covenant_matUnit` = `unit`.`unit_id`
--  ---------------------------------------------------------------------------
--	freightUnit

USE wowprmds;

SELECT `loadEntryTemp`.`loadEntry_loadNo`, `loadEntryTemp`.`loadEntry_covenant`, `covenant`.`covenant_freightUnit`, `unit`.`unit_id`, `unit`.`unit_desc`
FROM `covenant`
    RIGHT JOIN `loadEntryTemp` ON `loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`
    LEFT JOIN `unit` ON `covenant`.`covenant_freightUnit` = `unit`.`unit_id`
--  ---------------------------------------------------------------------------
-- scUnit

USE wowprmds;

SELECT `loadEntryTemp`.`loadEntry_loadNo`, `loadEntryTemp`.`loadEntry_covenant`, `covenant`.`covenant_freightScUnit`, `unit`.`unit_id`, `unit`.`unit_desc`
FROM `covenant`
    RIGHT JOIN `loadEntryTemp` ON `loadEntryTemp`.`loadEntry_covenant` = `covenant`.`covenant_id`
    LEFT JOIN `unit` ON `covenant`.`covenant_freightScUnit` = `unit`.`unit_id`
--  ---------------------------------------------------------------------------
--  LAappend

USE wowprmds;

SELECT `LAallExcUnits`.`loadEntry_covenant`,
       `LAallExcUnits`.`covenant_id`,
       `LAallExcUnits`.`covenant_covenantNo`,
       `LAallExcUnits`.`covenant_parentCo`,
       `LAallExcUnits`.`parentCo_id`,
       `LAallExcUnits`.`parentCo_name`,
       `LAallExcUnits`.`covenant_supplierSub`,
       `LAallExcUnits`.`supplierSub_id`,
       `LAallExcUnits`.`supplierSub_name`,
       `LAallExcUnits`.`supplierSub_parent`,
       `LAallExcUnits`.`supplier_id`,
       `LAallExcUnits`.`supplier_name`,
       `LAallExcUnits`.`covenant_recLoc`,
       `LAallExcUnits`.`locationSub_id`,
       `LAallExcUnits`.`locationSub_name`,
       `LAallExcUnits`.`loadEntry_deliveryDate`,
       `LAallExcUnits`.`loadEntry_deliveryTime`,
       `LAallExcUnits`.`loadEntry_grossWeight`,
       `LAallExcUnits`.`loadEntry_tareWeight`,
       `LAallExcUnits`.`loadEntry_moisture`,
       `LAallExcUnits`.`covenant_material`,
       `LAallExcUnits`.`material_id`,
       `LAallExcUnits`.`material_species`,
       `LAallExcUnits`.`materialSpecies_id`,
       `LAallExcUnits`.`materialSpecies_desc`,
       `LAallExcUnits`.`material_type`,
       `LAallExcUnits`.`materialType_id`,
       `LAallExcUnits`.`materialType_desc`,
       `LAallExcUnits`.`covenant_matPrice`,
       `LAallExcUnits`.`covenant_freightCompany`,
       `LAallExcUnits`.`freightComp_id`,
       `LAallExcUnits`.`freightComp_name`,
       `LAallExcUnits`.`covenant_arbFreightRate`,
       `LAallExcUnits`.`covenant_freightRate`,
       `LAallExcUnits`.`covenant_freightSurCharge`,
       `LAallExcUnits`.`loadEntry_notes`,
       `LAallExcUnits`.`loadEntry_loadNo`,
       `LAmatUnit`.`loadEntry_loadNo` AS matUnit_loadNo,
       `LAmatUnit`.`covenant_matUnit`,
       `LAmatUnit`.`unit_id`,
       `LAmatUnit`.`unit_desc`,
       `LAfreightUnit`.`loadEntry_loadNo` AS freightUnit_loadNo,
       `LAfreightUnit`.`unit_id` AS freightUnit_id,
       `LAfreightUnit`.`unit_desc` AS freightUnit_desc,
       `LAfreightScUnit`.`loadEntry_loadNo` AS freightScUnit_loadNo,
       `LAfreightScUnit`.`unit_id` AS freightScUnit_id,
       `LAfreightScUnit`.`unit_desc` AS freightScUnit_desc
FROM `LAallExcUnits`
RIGHT JOIN `LAmatUnit`  ON `LAallExcUnits`.`loadEntry_loadNo` = `LAmatUnit`.`loadEntry_loadNo`
RIGHT JOIN `LAfreightUnit` ON `LAallExcUnits`.`loadEntry_loadNo` = `LAfreightUnit`.`loadEntry_loadNo`
RIGHT JOIN `LAfreightScUnit` ON `LAallExcUnits`.`loadEntry_loadNo` = `LAfreightScUnit`.`loadEntry_loadNo`

