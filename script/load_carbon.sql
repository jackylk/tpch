use tpchcarbon_default;

select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;

insert into LINEITEM select * from tpchhive.LINEITEM;
insert into SUPPLIER select * from tpchhive.SUPPLIER;
insert into PARTSUPP select * from tpchhive.PARTSUPP;
insert into CUSTOMER select * from tpchhive.CUSTOMER;
insert into NATION select * from tpchhive.NATION;
insert into REGION select * from tpchhive.REGION;
insert into PART select * from tpchhive.PART;
insert into ORDERS select * from tpchhive.ORDERS;

select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;
