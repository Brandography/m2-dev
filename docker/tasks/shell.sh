#!/usr/bin/env bash
PROJECT_NAME=$1
USER=$2
cd ..
if [ -z "$USER" ]
  then
    docker-compose -p $PROJECT_NAME exec --user www-data magento bash
else
    docker-compose -p $PROJECT_NAME exec --user $USER magento bash
fi
