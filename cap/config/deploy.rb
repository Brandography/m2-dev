# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, APP_CONFIG["PROJECT_NAME"]
set :repo_url, APP_CONFIG["GIT_REPO"]

# set to deploy only what is in the src directory
set :repo_tree, 'src/'

# how many old releases de we want to keep
set :keep_releases, 5

# set correct permissions for Nexcess
set :magento_deploy_chmod_d, 711
set :magento_deploy_chmod_f, 644


set :magento_auth_public_key, APP_CONFIG["MAGENTO_AUTH_PUBLIC_KEY"]
set :magento_auth_private_key, APP_CONFIG["MAGENTO_AUTH_PRIVATE_KEY"]