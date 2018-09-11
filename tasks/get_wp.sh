#!/usr/bin/env bash
PROJECT_NAME=$1

if [ -n "$(ls -A ../../wordpress 2>/dev/null)" ] 
	then
    	echo "Wordpress seems to be already imported!!"
else
	cd ../docker
	docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uroot -pmagento  --execute="create database if not exists wordpress;"
	docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uroot -pmagento  --execute="grant all privileges on wordpress.* to 'wordpress'@'%' identified by 'wordpress'; flush privileges;"
	docker-compose -p $PROJECT_NAME exec -T -u www-data magento sh -c "wget http://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz && rm -f latest.tar.gz"
fi