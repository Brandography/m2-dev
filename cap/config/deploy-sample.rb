# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "<application name>"
set :repo_url, "<repo>"

# set to deploy only what is in the src directory
set :repo_tree, 'src/'

# how many old releases de we want to keep
set :keep_releases, 5

# set correct permissions for Nexcess
set :magento_deploy_chmod_d, 711
set :magento_deploy_chmod_f, 644

# add wp folder to linked dirs
append :linked_dirs, 'wp'

set :magento_auth_public_key, '<you pulic_key here>'
set :magento_auth_private_key, '<your private_key here'