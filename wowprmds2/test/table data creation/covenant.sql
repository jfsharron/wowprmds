USE wowprmds;
INSERT INTO covenant (covenant_active, covenant_covenantNo, covenant_revision, covenant_revisionDate,
                      covenant_revisionDetails, covenant_variant, covenant_variantDetails,covenant_supplierSub,
                      covenant_material, covenant_recLoc, covenant_matPrice, covenant_matUnit, covenant_remitFreq,
                      covenant_freightFobRec, covenant_freightCompany, covenant_freightUnit, covenant_freightRate,
                      covenant_freightSurCharge, covenant_freightScUnit, covenant_freightScLastUpdate,
                      covenant_freightRemitFreq, covenant_notes)
                      VALUES (1, 'AB1025',NULL,NULL,
                              NULL, NULL, NULL, 9001,
                              1, 2, 10.25,1,2,
                              0,5000,1,33.00,NULL,
                              NULL, NULL,3, NULL);