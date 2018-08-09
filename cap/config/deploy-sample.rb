# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "<application name>"
set :repo_url, "<repo>"

# set to deploy only what is in the src directory
set :repo_tree, 'src/'

# how many old releases de we want to keep
set :keep_releases, 5

# run scripts
namespace :deploy do 
  after :deploy, "permissions:set"
end