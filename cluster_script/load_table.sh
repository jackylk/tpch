HOST=carbon1

# $SPARK_HOME/bin/beeline -u jdbc:hive2://$HOST:10000 -f ./create_csv_table.sql  2>&1 |tee test/create_csv.log

$SPARK_HOME/bin/beeline -u jdbc:hive2://$HOST:10000 -f ./load_carbon_base.sql  2>&1 |tee test/load_carbon.log 

$SPARK_HOME/bin/beeline -u jdbc:hive2://$HOST:10000 -f ./create_parquet_partition.sql  2>&1 |tee test/load_parquet.log
