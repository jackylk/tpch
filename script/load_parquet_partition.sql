use tpchparquet_partition;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.dynamic.partition=true;
set hive.exec.max.dynamic.partitions=10000;

select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;

insert into table supplier select * from tpchhive.supplier;
insert into table ORDERS partition(O_ORDERDATE) select O_ORDERKEY,O_CUSTKEY,O_ORDERSTATUS,O_TOTALPRICE,O_ORDERPRIORITY,O_CLERK,O_SHIPPRIORITY,O_COMMENT,o_orderdate from tpchhive.ORDERS DISTRIBUTE BY O_ORDERDATE;
insert into table lineitem partition(L_SHIPDATE) select L_ORDERKEY,L_PARTKEY,L_SUPPKEY,L_LINENUMBER,L_QUANTITY,L_EXTENDEDPRICE,L_DISCOUNT,L_TAX,L_RETURNFLAG,L_LINESTATUS,L_COMMITDATE,L_RECEIPTDATE,L_SHIPINSTRUCT,L_SHIPMODE,L_COMMENT, l_shipdate from tpchhive.lineitem DISTRIBUTE BY l_shipdate;
insert into table PARTSUPP select * from tpchhive.partsupp;
insert into table nation partition(N_NAME) select N_NATIONKEY,N_REGIONKEY,N_COMMENT,n_name from tpchhive.nation;
insert into table REGION partition(r_name) select R_REGIONKEY,R_COMMENT,r_name from tpchhive.region;
insert into TABLE PART partition(P_BRAND) select P_PARTKEY,P_NAME,P_MFGR,P_TYPE,P_SIZE,P_CONTAINER,P_RETAILPRICE,P_COMMENT,P_BRAND from tpchhive.part;
insert into table CUSTOMER partition(C_MKTSEGMENT) select C_CUSTKEY,C_NAME,C_ADDRESS,C_NATIONKEY,C_PHONE,C_ACCTBAL,C_COMMENT,C_MKTSEGMENT from tpchhive.customer;


select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;
