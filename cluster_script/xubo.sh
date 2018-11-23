spark-submit \
  --master yarn \
  --class org.apache.carbondata.spark.thriftserver.CarbonThriftServer \
  --jars  /root/apache-carbondata-1.6.0-SNAPSHOT-bin-spark2.2.1-hadoop2.7.2.jar /root/apache-carbondata-1.6.0-SNAPSHOT-bin-spark2.2.1-hadoop2.7.2.jar s3a://xubo/ KEQV1AJBWZ7IE4ZIGO1M GaReL9ekYTVeZcBOe6cxyKd4nsvfAUDZ5MiQQoTC  obs.cn-north-1.myhwclouds.com 

