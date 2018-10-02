require 'securerandom'

namespace :opcache do
  desc "Clear the OPCache before linking to new release"
  task :clear do
    on roles (:all) do
      previous_release = "#{deploy_to}/current"
      file_name = SecureRandom.hex + ".php"
      execute "cd #{previous_release} && echo '<?php opcache_reset();' > #{file_name}"
      execute "wget -q --spider #{APP_CONFIG[fetch(:stage)]['url']}/#{file_name}"
      execute "rm #{previous_release}/#{file_name}"
      puts "Flushed OPCache"
    end
  end
end
