server '<server>', user: '<user>', roles: %w{app db web}
set :deploy_to, '<path>'
set :branch, proc { `git rev-parse --abbrev-ref <branch>`.chomp }