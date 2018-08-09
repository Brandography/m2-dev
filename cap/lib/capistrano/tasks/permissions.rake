namespace :permissions do
  desc "Set file and dir permissions"
  task :set do
    on roles (:all) do
      execute "cd  #{release_path}; find . -type f -exec chmod 644 {} \\; && find . -type d -exec chmod 711 {} \\; && find . -type f -name “*.php” -exec chmod 600 {} \\;"
    end
  end
end