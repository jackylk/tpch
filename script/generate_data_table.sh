cd /opt/bigdata/tpc/tpc-h/2.17.3/dbgen
./dbgen -s 2
mv *.tbl /opt/bigdata/tpc/tpch_data

export SPARK_HOME=/opt/bigdata/spark-2.2.1-bin-hadoop2.7
cd $SPARK_HOME

./bin/beeline -u jdbc:hive2://X160912:10000 -f /opt/bigdata/tpc/script/create_csv_table.sql  2>&1 |tee test/create_csv.log

./bin/beeline -u jdbc:hive2://X160912:10000 -f /opt/bigdata/tpc/script/create_carbon_localsort.sql  2>&1 |tee test/create_carbon.log

./bin/beeline -u jdbc:hive2://X160912:10000 -f /opt/bigdata/tpc/script/load_carbon.sql  2>&1 |tee test/load_carbon.log 

./bin/beeline -u jdbc:hive2://X160912:10000 -f /opt/bigdata/tpc/script/create_parquet_partition.sql  2>&1 |tee test/create_parquet.log

./bin/beeline -u jdbc:hive2://X160912:10000 -f /opt/bigdata/tpc/script/load_parquet_partition.sql  2>&1 |tee test/load_parquet.log

