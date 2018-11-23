use tpchparquet;

insert into table nation select * from tpchhive.nation;
insert into table supplier select * from tpchhive.supplier;
insert into table ORDERS select * from tpchhive.ORDERS;
insert into table lineitem select * from tpchhive.lineitem;
insert into table PARTSUPP select * from tpchhive.partsupp;
insert into table REGION select * from tpchhive.region;
insert into TABLE PART select * from tpchhive.part;
insert into table CUSTOMER select * from tpchhive.customer;
