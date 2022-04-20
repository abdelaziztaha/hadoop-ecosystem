**Sandbox for Big Data (Hadoop/Hive/NiFi):**

This Big Data Ecosystem is still not complete, but can already be run and tested


**To run:**

3- Execute the init.sh bash script

2- run: docker-compose up

**To Test (wait until docker-compose completely run, it can take up 5 min):**

1- Testing Hadoop: .....

2- Testing Hive: .....

3- Testing NiFi: Open the browser with http://localhost:9999 to test nifi (Note that the jdbc drivers for the hive metastor are already saved in the container in the mounted directory /opt/datalake/nifi/drivers/postgresql-42.3.4.jar) 

