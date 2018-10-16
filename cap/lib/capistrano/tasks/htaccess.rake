namespace :htaccess do
  desc "Sets the correct htaccess file depending on the deploy stage"
  task :set do
    on roles (:all) do
      stage = fetch(:stage)
      execute "if [ -f '#{release_path}/.htaccess-#{stage}' ]; then rm #{release_path}/.htaccess && mv #{release_path}/.htaccess-#{stage} #{release_path}/.htaccess; fi"
    end
  end
end
