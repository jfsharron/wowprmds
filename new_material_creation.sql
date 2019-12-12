USE wowprmds;
INSERT INTO materialSpecies (
    materialSpecies_desc)
VALUES
('douglas fir'), ('alder'), ('cedar');



INSERT INTO materialType (
    materialType_desc)
VALUES
('shavings'), ('sawdust'), ('chip fines'),
('sander dust');



INSERT INTO material (
    material_species, material_type)
VALUES
(1,1), (1,2), (1,3),
(1,4), (2,1), (2,2),
(2,3), (2,4), (3,1),
(3, 2), (3,3), (3,4);

