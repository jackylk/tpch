use tpchcarbon_base;

set carbon.number.of.cores.while.loading=8;

load data inpath "hdfs://carbon1:9000/tpch-data/part" into table PART options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/supplier" into table SUPPLIER options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/orders" into table ORDERS options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/nation" into table NATION options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/region" into table REGION options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/customer" into table CUSTOMER options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/partsupp" into table PARTSUPP options ('header'='false','delimiter'='|');
load data inpath "hdfs://carbon1:9000/tpch-data/lineitem" into table LINEITEM options ('header'='false','delimiter'='|');


select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;
