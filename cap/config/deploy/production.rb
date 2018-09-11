append :linked_files, APP_CONFIG["PRODUCTION_LINKED_FILES"]
append :linked_dirs, APP_CONFIG["PRODUCTION_LINKED_DIRS"]

server APP_CONFIG["PRODUCTION_SERVER"], user: APP_CONFIG["PRODUCTION_USER"], roles: %w{app db web}
set :deploy_to, APP_CONFIG["PRODUCTION_DEPLOY_TO"]
set :branch, proc { `git rev-parse --abbrev-ref #{APP_CONFIG["PRODUCTION_BRANCH"]}`.chomp }