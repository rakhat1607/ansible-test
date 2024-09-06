/opt/kafka/bin/kafka-producer-perf-test.sh \
	  --topic test \
	    --num-records 500000 \
	      --record-size 1024 \
	        --throughput -1 \
		  --producer-props acks=all \
		    bootstrap.servers=10.0.88.36:9092 \
#		      buffer.memory=67108864 \
#		        batch.size=8196
