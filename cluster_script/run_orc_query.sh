
$SPARK_HOME/bin/beeline -u jdbc:hive2://carbon1:10000 -f ./orc_queries.sql  2>&1 | tee test/orc.log

grep seconds test/orc.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print substr($4, 2)}' > report/orc-time.txt
grep seconds test/orc.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print $1}' > report/orc-result.txt
