
DRIVER_NAME=postgresql-42.3.4.jar
sudo mkdir /datalake/
sudo mkdir /opt/datalake/nifi/
sudo mkdir /opt/datalake/nifi/drivers
sudo mkdir /opt/datalake/nifi/data
sudo mkdir /opt/datalake/nifi/conf
sudo wget https://jdbc.postgresql.org/download/$DRIVER_NAME
sudo mv $DRIVER_NAME /opt/datalake/nifi/drivers/$DRIVER_NAME
