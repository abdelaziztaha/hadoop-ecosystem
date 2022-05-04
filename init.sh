#!/bin/bash

# This script should be run before starting the docker-expose
# This is the place to create setings in the host (outside the containers
# such as common folders, etc.

export VOLUME_ROOT=/home/aziztaha/datalake5
export USER=aziztaha
echo "Crating directories in "$VOLUME_ROOT

DRIVER_NAME=postgresql-42.3.4.jar

sudo mkdir $VOLUME_ROOT

sudo mkdir $VOLUME_ROOT/hadoop
sudo mkdir $VOLUME_ROOT/hadoop/dfs
sudo mkdir $VOLUME_ROOT/hadoop/dfs/name
sudo mkdir $VOLUME_ROOT/hadoop/dfs/data
sudo mkdir $VOLUME_ROOT/meta
sudo mkdir $VOLUME_ROOT/meta/postgedata
sudo mkdir $VOLUME_ROOT/drivers

sudo wget https://jdbc.postgresql.org/download/$DRIVER_NAME
sudo mv $DRIVER_NAME $VOLUME_ROOT/drivers/$DRIVER_NAME

sudo chown -R  $USER:$USER $VOLUME_ROOT
sudo chmod -R 777 $BASE_ROOT


