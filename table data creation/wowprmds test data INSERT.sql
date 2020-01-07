-- -----------------------------------------------------
--  INSERT table 'geotype'
--  ----------------------------------------------------

USE wowprmds;
INSERT INTO geoType (
    geoType_desc) 
VALUES (
    'city'), 
    ('state'),
    ('country');

-- -----------------------------------------------------
--  INSERT table 'geo'
--  ----------------------------------------------------

USE wowprmds;
INSERT INTO geo (
    geo_type, geo_value)
VALUES (
        2, 'Oregon'), 
        (2, 'Washington'),
        (1, 'Warrenton'), 
        (1, 'Morton'),
        (3, 'United States'),
        (1, 'Randle'),
        (1, 'Banks'),
        (1, 'Columbia City'),
        (1, 'Tillamook'),
        (1, 'Willamina'),
        (1, 'Longview'),
        (1, 'Kalama'),
        (1, 'Mollala'),
        (1, 'Bend'),
        (1, 'Sherwood'),
        (1, 'Centralia'),
        (1, 'Garabaldi'),
        (1, 'Mist'),
        (1,'Gram'),
        (1, 'Forest Grove');    

-- -----------------------------------------------------
--  INSERT table 'address'
--  ----------------------------------------------------

USE wowprmds;
INSERT INTO address (
        address_desc,
        address_name, 
        address_line1, 
        address_line2, 
        address_city, 
        address_state,
        address_zip, 
        address_country, 
        address_phonedesc1, 
        address_phone1, 
        address_phonedesc2, 
        address_phone2, 
        address_phonedesc3, 
        address_phone3, 
        address_fax, 
        address_notes)
VALUES (
        'Groat Brothers - Kalama',
        'Groat Brothers', 
        'PO Box 151', 
        NULL,
        32, 
        2, 
        '98665', 
        25,
        'main line', 
        '3605551155', 
        NULL,
        NULL, 
        NULL,   
        NULL, 
        NULL,
        NULL);     