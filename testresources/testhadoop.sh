
docker exec -it namenode hdfs dfs -mkdir -p /input/
docker exec -it namenode mkdir -p /tmp
docker cp sometexttoprocess.txt namenode:/tmp/
docker cp WordCount.jar namenode:/tmp/  
docker exec -it namenode hdfs dfs -copyFromLocal /tmp/sometexttoprocess.txt /input/
docker exec -it namenode hadoop jar /tmp/WordCount.jar WordCount /input /output
docker exec -it namenode  hdfs dfs -cat /output/*
docker exec -it namenode hdfs dfs -rm -r /output
docker exec -it  namenode hdfs dfs -rm -r /input
docker exec -it  namenode rm /tmp/WordCount.jar
docker exec -it  namenode rm /tmp/sometexttoprocess.txt

