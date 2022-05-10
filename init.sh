#!/bin/bash

# This script should be run before starting the docker-expose
# This is the place to create setings in the host (outside the containers
# such as common folders, etc.

export VOLUME_ROOT=/home/aziztaha/datalake
export USER=aziztaha
echo "Crating directories in "$VOLUME_ROOT

DRIVER_NAME=postgresql-42.3.4.jar

mkdir -p $VOLUME_ROOT

mkdir -p $VOLUME_ROOT/hadoop
mkdir -p $VOLUME_ROOT/hadoop/dfs
mkdir -p $VOLUME_ROOT/hadoop/dfs/name
mkdir -p $VOLUME_ROOT/hadoop/dfs/data
mkdir -p $VOLUME_ROOT/meta
mkdir -p $VOLUME_ROOT/meta/postgredata
mkdir -p $VOLUME_ROOT/atlas
mkdir -p $VOLUME_ROOT/atlas/models
mkdir -p $VOLUME_ROOT/atlas/models/hadoop
mkdir -p $VOLUME_ROOT/drivers

wget https://jdbc.postgresql.org/download/$DRIVER_NAME
mv $DRIVER_NAME $VOLUME_ROOT/drivers/$DRIVER_NAME

#chown -R  $USER:$USER $VOLUME_ROOT


