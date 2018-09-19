#!/usr/bin/env bash
PROJECT_NAME=$1
FILE=$2
cd ..
if [ -z "$2" ];then
    echo "enter sql file name"
else
	zcat mysqldump/$FILE | docker-compose -p $PROJECT_NAME exec -T -u root db mysql -umagento -pmagento magento
	docker-compose -p $PROJECT_NAME exec -T -u root db mysql -umagento -pmagento magento --execute="update core_config_data set value='http://localhost/' where path='web/unsecure/base_url';"
fi
