#!/usr/bin/env bash
PROJECT_NAME=$1
TASK=$2
cd ../docker
docker-compose -p $PROJECT_NAME exec --user www-data magento composer $TASK
exit 0
