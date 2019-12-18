USE wowprmds;

SELECT  material_id, materialSpecies_desc, materialType_desc
FROM material, materialSpecies, materialType
WHERE material.material_species = materialSpecies.materialSpecies_id AND
      material.material_type = materialType.materialType_id;