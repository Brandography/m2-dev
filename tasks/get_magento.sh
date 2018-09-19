#!/usr/bin/env bash
PROJECT_NAME=$1
cd ../docker
docker-compose -p $PROJECT_NAME exec --user www-data magento install-magento2
exit 0
