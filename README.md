# Hadoop ecosystem

**Sandbox for Big Data (Hadoop/Hive/NiFi/ATLAS/HUE):**

This Big Data Ecosystem is still not complete, but can already be run and tested


**To run:**

3- Execute the init.sh bash script to prepare directory structure on your lacal machine for persisting container volumes. This script is to be only once before the first run. Reruning it later has no effect.

2- run: docker-compose up

**To Test (wait until docker-compose completely run, it can take up 15 min):**

***Testing Hadoop:*** 

....... A testing submit is comming soon

***Testing Hive:***

1: to launch the hive server bash:

docker-compose exec hive-server bash


2: to connect to the meta store from there and test SQL:
/opt/hive/bin/beeline -u jdbc:hive2://localhost:10000

***Testing NiFi:***

Open the browser with http://localhost:9999 to test nifi (Note that the jdbc drivers for the hive metastor are already saved in the container in the mounted directory /opt/datalake/nifi/drivers/postgresql-42.3.4.jar) 

!! Note that your settings in NiFi will be lost after restarting the container. A fix for this is comming soon.

***Testing ATLAS:***

Open the browser with http://localhost:21000 to test ATLAS. Login with admin/admin

***Testing HUE:***

Open the browser with http://localhost:8888 to test HUE. Create a new login to get started
