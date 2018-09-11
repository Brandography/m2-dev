#!/usr/bin/env bash
PROJECT_NAME=$1
docker-compose -p $PROJECT_NAME exec --user www-data magento n98-magerun2.phar $@
exit 0