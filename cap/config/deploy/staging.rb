set :stage, 'staging'

if !APP_CONFIG["staging"]["linked_files"].nil?
  APP_CONFIG["staging"]["linked_files"].each do |file|
    append :linked_files, file
  end
end
if !APP_CONFIG["staging"]["linked_dirs"].nil?
  APP_CONFIG["staging"]["linked_dirs"].each do |dir|
    append :linked_dirs, dir
  end
end

server APP_CONFIG["staging"]["server"], user: APP_CONFIG["staging"]["user"], roles: %w{app db web}
set :deploy_to, APP_CONFIG["staging"]["deploy_path"]
set :branch, proc { `git rev-parse --abbrev-ref #{APP_CONFIG["staging"]["branch"]}`.chomp }
