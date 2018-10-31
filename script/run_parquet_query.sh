export SPARK_HOME=/opt/bigdata/spark-2.2.1-bin-hadoop2.7
cd $SPARK_HOME

./bin/beeline -u jdbc:hive2://X160912:10000 -f /opt/bigdata/tpc/script/parquet_queries.sql 2>&1 | tee test/parquet1.log

grep seconds test/parquet1.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print substr($4, 2)}' > report/parquet1.txt

