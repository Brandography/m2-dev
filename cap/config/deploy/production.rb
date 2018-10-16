set :stage, 'production'

if !APP_CONFIG["production"]["linked_files"].nil?
  APP_CONFIG["production"]["linked_files"].each do |file|
    append :linked_files, file
  end
end
if !APP_CONFIG["production"]["linked_dirs"].nil?
  APP_CONFIG["production"]["linked_dirs"].each do |dir|
    append :linked_dirs, dir
  end
end

server APP_CONFIG["production"]["server"], user: APP_CONFIG["production"]["user"], roles: %w{app db web}
set :deploy_to, APP_CONFIG["production"]["deploy_path"]
set :branch, proc { `git rev-parse --abbrev-ref #{APP_CONFIG["production"]["branch"]}`.chomp }
