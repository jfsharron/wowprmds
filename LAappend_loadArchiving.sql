USE wowprmds;

--  ----------------------------------------------------------------------------
--  set loadNo

INSERT INTO wowprmds.loadArchiving (loadArchiving.loadArchiving_loadNo)
SELECT loadEntry_loadNo
FROM loadEntryTemp;
--  ----------------------------------------------------------------------------
--  update loadArchiving

UPDATE loadArchiving, LAappend
SET          
loadArchiving.loadArchiving_parentCoId        = LAappend.parentCo_id,
loadArchiving.loadArchiving_parentCo          = LAappend.parentCo_name,
loadArchiving.loadArchiving_covenantId        = LAappend.covenant_id,
loadArchiving.loadArchiving_covenantNo        = LAappend.covenant_covenantNo,
loadArchiving.loadArchiving_supplier          = LAappend.supplier_name,
loadArchiving.loadArchiving_supplierNo        = LAappend.supplier_id,
loadArchiving.loadArchiving_supplierSub       = LAappend.supplierSub_name,
loadArchiving.loadArchiving_supplierSubNo     = LAappend.supplierSub_id,
loadArchiving.loadArchiving_recLoc            = LAappend.locationSub_name,
loadArchiving.loadArchiving_recLocNo          = LAappend.locationSub_id,
loadArchiving.loadArchiving_deliveryDate      = LAappend.loadEntry_deliveryDate,
loadArchiving.loadArchiving_deliveryTime      = LAappend.loadEntry_deliveryTime,
loadArchiving.loadArchiving_grossWeight       = LAappend.loadEntry_grossWeight,
loadArchiving.loadArchiving_tareWeight        = LAappend.loadEntry_tareWeight,
loadArchiving.loadArchiving_moisture          = LAappend.loadEntry_moisture,
loadArchiving.loadArchiving_material          = LAappend.material_id,
loadArchiving.loadArchiving_materialSpecies   = LAappend.materialSpecies_desc,
loadArchiving.loadArchiving_materialSpeciesNo = LAappend.materialSpecies_id,
loadArchiving.loadArchiving_materialType      = LAappend.materialType_desc,
loadArchiving.loadArchiving_materialTypeNo    = LAappend.materialType_id,
loadArchiving.loadArchiving_materialPrice     = LAappend.covenant_matPrice,
loadArchiving.loadArchiving_materialUnitDesc  = LAappend.unit_desc,
loadArchiving.loadArchiving_materialUnitNo    = LAappend.unit_id,
loadArchiving.loadArchiving_freightCompany    = LAappend.freightComp_name,
loadArchiving.loadArchiving_freightCompanyNo  = LAappend.freightComp_id,
loadArchiving.loadArchiving_arbFreightCost    = LAappend.covenant_arbFreightRate,
loadArchiving.loadArchiving_freightCost       = LAappend.covenant_freightRate,
loadArchiving.loadArchiving_freightUnit       = LAappend.freightUnit_desc,
loadArchiving.loadArchiving_freightUnitNo     = LAappend.freightUnit_id,
loadArchiving.loadArchiving_freightSurcharge  = LAappend.covenant_freightSurCharge,
loadArchiving.loadArchiving_freightScUnit     = LAappend.freightScUnit_desc,
loadArchiving.loadArchiving_freightScUnitNo   = LAappend.freightScUnit_id,
loadArchiving.loadArchiving_loadNotes         = LAappend.loadEntry_notes,
loadArchiving.loadArchiving_appd              = 1

WHERE LAappend.loadEntry_loadNo = loadArchiving.loadArchiving_loadNo 
      AND loadArchiving.loadArchiving_appd = 0;
--  ----------------------------------------------------------------------------
--  clear loadEntryTemp

DELETE FROM loadEntryTemp;
