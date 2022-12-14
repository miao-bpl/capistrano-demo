# config valid for current version and patch releases of Capistrano
lock "~> 3.17"

set :ssh_options, { forward_agent: true, user: "manager", auth_methods: ['publickey'], keys: %w(~/.ssh/promdev) }
set :application, "capistrano-demo"
set :repo_url, "https://github.com/miao-bpl/capistrano-demo.git"

set :rails_env, 'production'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/home/manager/capistrano-demo"
set :deploy_to, "/home/manager/capistrano-staging"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# 如果你使用的 Rails 5.2 以下版本，将 `config/master.key`，改为 `unix://#{shared_path}/tmp/sockets/puma.sock/secrets.yml`
append :linked_files, "config/database.yml", "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/packs", "node_modules"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

set :default_env, {
  node_env: :production
}

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure