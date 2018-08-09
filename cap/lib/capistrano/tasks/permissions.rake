namespace :phppermissions do
  desc "Set php file permissions"
  task :set do
    on roles (:all) do
      execute "cd  #{release_path}; find . -type f -name “*.php” -exec chmod 600 {} \\;"
    end
  end
end