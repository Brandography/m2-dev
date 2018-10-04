#!/usr/bin/env bash
PROJECT_NAME=$1

rm -rf ../../src/pub/static/*
rm -rf ../../src/var/cache/*
rm -rf ../../src/var/composer_home/*
rm -rf ../../src/var/page_cache/*
rm -rf ../../src/var/view_preprocessed/*

cd ../docker
docker-compose -p $PROJECT_NAME exec --user www-data magento n98-magerun2.phar setup:static-content:deploy

exit 0
