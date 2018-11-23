
$SPARK_HOME/bin/beeline -u jdbc:hive2://carbon1:10000 -f ./carbon_queries.sql  2>&1 | tee test/carbon.log

grep seconds test/carbon.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print substr($4, 2)}' > report/carbon-time.txt
grep seconds test/carbon.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print $1}' > report/carbon-result.txt

$SPARK_HOME/bin/beeline -u jdbc:hive2://carbon1:10000 -f ./carbon_ls_queries.sql  2>&1 | tee test/carbon_ls.log

grep seconds test/carbon_ls.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print substr($4, 2)}' > report/carbon_ls-time.txt
grep seconds test/carbon_ls.log | sed '1,9d' | sed '15d' | sed '16d' | awk '{print $1}' > report/carbon_ls-result.txt
