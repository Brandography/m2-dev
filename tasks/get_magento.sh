#!/usr/bin/env bash
source ../../.env
cd ../docker

docker-compose -p $PROJECT_NAME exec --user www-data magento install-magento2
exit 0
