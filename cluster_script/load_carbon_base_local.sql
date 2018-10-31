use tpchcarbon_base;

set carbon.number.of.cores.while.loading=8;

load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/part.tbl" into table PART options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/supplier.tbl" into table SUPPLIER options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/orders.tbl" into table ORDERS options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/nation.tbl" into table NATION options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/region.tbl" into table REGION options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/customer.tbl" into table CUSTOMER options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/partsupp.tbl" into table PARTSUPP options ('header'='false','delimiter'='|');
load data inpath "/Users/jacky/code/tpch-osx/dbgen/tpch_data/lineitem.tbl" into table LINEITEM options ('header'='false','delimiter'='|');


select count(*) from LINEITEM;
select count(*) from SUPPLIER;
select count(*) from PARTSUPP;
select count(*) from CUSTOMER;
select count(*) from NATION;
select count(*) from REGION;
select count(*) from PART;
select count(*) from ORDERS;
