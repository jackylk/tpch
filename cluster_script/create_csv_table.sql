drop database if exists tpchhive cascade;
create database tpchhive;
use tpchhive;

create table if not exists SUPPLIER(S_SUPPKEY string, S_NAME string, S_ADDRESS string, S_NATIONKEY string, S_PHONE string, S_ACCTBAL double, S_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/supplier.tbl';
create table if not exists PARTSUPP(PS_PARTKEY int , PS_SUPPKEY string, PS_AVAILQTY int, PS_SUPPLYCOST double, PS_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/partsupp.tbl';
create table if not exists CUSTOMER(C_CUSTKEY string, C_NAME string, C_ADDRESS string, C_NATIONKEY string, C_PHONE string, C_ACCTBAL double, C_MKTSEGMENT string, C_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/customer.tbl';
create table if not exists NATION(N_NATIONKEY string, N_NAME string, N_REGIONKEY string, N_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/nation.tbl';
create table if not exists REGION(R_REGIONKEY string, R_NAME string, R_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/region.tbl';
create table if not exists PART(P_PARTKEY INT, P_NAME string, P_MFGR string, P_BRAND string, P_TYPE string, P_SIZE int, P_CONTAINER string, P_RETAILPRICE double, P_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/part.tbl';
create table if not exists LINEITEM(L_ORDERKEY INT , L_PARTKEY INT , L_SUPPKEY string, L_LINENUMBER int, L_QUANTITY double, L_EXTENDEDPRICE double, L_DISCOUNT double, L_TAX double, L_RETURNFLAG string, L_LINESTATUS string, L_SHIPDATE date, L_COMMITDATE date, L_RECEIPTDATE date, L_SHIPINSTRUCT string, L_SHIPMODE string, L_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/lineitem.tbl';
create table if not exists ORDERS(O_ORDERKEY int, O_CUSTKEY string, O_ORDERSTATUS string, O_TOTALPRICE double, O_ORDERDATE date, O_ORDERPRIORITY string, O_CLERK string, O_SHIPPRIORITY int, O_COMMENT string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE LOCATION 'hdfs://carbon1:9000/tpch-data/orders.tbl';

select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;

