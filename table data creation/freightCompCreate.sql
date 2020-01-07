USE rmds;
CREATE TABLE freightComp (
    freightComp_id int not null primary key auto_increment,
    freightComp_name varchar(50),
    freightComp_contact varchar(50),
    freightComp_email varchar(25),
    freightComp_phone1 varchar(10),
    freightComp_phone2 varchar(10),
    freightComp_phone3 varchar(10),
    freightComp_fax varchar(10),
    freightComp_address varchar(100),
    freightComp_city varchar(50),
    freightComp_state varchar(2),
    freightComp_zip varchar(9)
);