# Magento 2 DEV and DEPLOY
---
## Setup
### Install
Install this environment in the root dir of your project as a [git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules). You can name the submodule dir whatever you like.
```
git submodule add git@github.com:danhort/m2-dev.git <submodule dir>
```
### Initialize
```
./<submodule dir>/init.sh <project name>
```
### Update
```
make update
```
---
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
make shell
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
---
## Deploy
```
make deploy to=<production/staging>
```
## Links
===================== 🔗 Links 🔗 ===================

    Access your new links:

    🌎      Web server:    http://localhost/
    🛠️      PHPMyAdmin:    http://localhost:8080
    📧      Mailhog:       http://localhost:8025

===================== 🔗 Links 🔗 ===================