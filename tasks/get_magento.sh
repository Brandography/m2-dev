#!/usr/bin/env bash
PROJECT_NAME=$1
VERSION=$2
cd ../docker
docker-compose -p $PROJECT_NAME exec --user www-data magento install-magento2 $VERSION
exit 0
