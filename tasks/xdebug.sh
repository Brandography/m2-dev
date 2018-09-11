#!/usr/bin/env bash
PROJECT_NAME=$1
docker-compose -p $PROJECT_NAME exec --user root magento xdebug
exit 0