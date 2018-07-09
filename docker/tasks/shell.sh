#!/usr/bin/env bash
cd ../
if [ -z "$1" ]
  then
    docker-compose exec --user www-data magento bash
else
    docker-compose exec --user $@ magento bash
fi