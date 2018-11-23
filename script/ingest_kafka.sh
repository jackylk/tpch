for i in `seq 1 200`
do
cat ./lineitem_1w.tbl| /Users/jacky/code/kafka_2.11-1.1.0/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
sleep 3
done

