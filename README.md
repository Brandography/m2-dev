# Magento 2 DEV and DEPLOY
## Setup
### Install
Install this environment in the root dir of your project as a [git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules). You can name the submodule dir whatever you like.
```
git submodule add git@github.com:Brandography/m2-dev.git <submodule dir>
```
### Initialize
```
./<submodule dir>/init.sh <project name>
```
### Update
```
make update
```
### Help
```
make help
```
## Usage
### Docker
Start Docker containers.
```
make start
```
Stop Docker containers.
```
make stop
```
Kill Docker containers.
```
make kill
```
SSH into Magento Docker container.
```
make shell [user=<user>]
```
SSH into DB Docker container.
```
make db-shell
```
Import an compressed (gz) sql file to the Magento database. This file must be placed in the docker/mysqldump folder.
```
make db-import file=<file name>
```
Export a compressed database file into the docker/mysqldump folder.
```
make db-dump
```
### Magento
Use n98-magerun cli.
```
make n98 t=<commands>
```
Use Magento cli.
```
make magento t=<commands>
```
Use composer cli.
```
make composer t=<commands>
```
Enable/Disable xdebug.
```
make xdebug
```
## Wordpress
If you would like to install Wordpress a the Magento root for integrations like fishpig.
```
make get-wp
```
don't forget to add wordpress to the gitignore file.
For the wp-config.php
- DB_NAME: wordpress
- DB_USER: wordpress
- DB_PASSWORD: wordpress
- DB_HOST: db

## Deploy
```
make deploy to=<production/staging>
```
## Links
- 🌎 Web server:    http://localhost/
- 🛠 ️PHPMyAdmin:    http://localhost:8080
- 📧 Mailhog:       http://localhost:8025