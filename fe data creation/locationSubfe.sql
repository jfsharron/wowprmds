USE wowprmds;

INSERT INTO `wowprmds`.`locationSub`
(`locationSub_parentCo`, `locationSub_name`, `locationSub_symbol`, `locationSub_active`,
 `locationSub_contact`, `locationSub_phone1desc`, `locationSub_phone1`, `locationSub_phone2desc`, `locationSub_phone2`,
 `locationSub_phone3desc`, `locationSub_phone3`, `locationSub_fax`, `locationSub_address1desc`,
 `locationSub_address1line1`, `locationSub_address1line2`, `locationSub_address1postal`, `locationSub_address2desc`,
 `locationSub_address2line1`, `locationSub_address2line2`, `locationSub_address2postal`, `locationSub_notes`)
 VALUES

(
1,'WOWP - BNK', 'BNK', 1, 3004,
 'main','5035104444',NULL,NULL,
 NULL,NULL,'5035103887','mail',
 '310 Sunset Ave', NULL,97018,
 'physical','310 Sunset Ave.',NULL,
 97018, NULL
);