USE wowprmds;

SELECT
    p7.supplier_name, c1.covenant_id

FROM
    (SELECT p15.covenant_supplierSub, p15.covenant_id FROM loadEntryTemp AS p16
    JOIN covenant AS p15 ON p16.loadEntry_covenant = p15.covenant_id) AS c1

JOIN
    supplierSub AS p8

ON
    c1.covenant_supplierSub = p8.supplierSub_id

JOIN
    supplier AS p7

ON
    p8.supplierSub_parent = p7.supplier_id;






















