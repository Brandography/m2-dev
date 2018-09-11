append :linked_files, APP_CONFIG["STAGING_LINKED_FILES"]
append :linked_dirs, APP_CONFIG["STAGING_LINKED_DIRS"]

server APP_CONFIG["STAGING_SERVER"], user: APP_CONFIG["STAGING_USER"], roles: %w{app db web}
set :deploy_to, APP_CONFIG["STAGING_DEPLOY_TO"]
set :branch, proc { `git rev-parse --abbrev-ref #{APP_CONFIG["STAGING_BRANCH"]}`.chomp }