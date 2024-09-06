

/opt/kafka/bin/kafka-run-class.sh kafka.tools.GetOffsetShell   --broker-list 10.0.88.36:9092 --topic test   | awk -F  ":" '{sum += $3} END {print "Result here: "sum}'
