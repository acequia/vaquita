# config valid only for current version of Capistrano
lock '3.7.1'

set :application, 'Vaquita'
set :repo_url, 'git@github.com:acequia/vaquita.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
#
# Default value for default_env is {}
# set :default_env, { path: '/opt/ruby/bin:$PATH' }

# Defaults
set :format, :airbrussh
set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto
set :pty, false
set :keep_releases, 5

append :linked_files,
  'config/database.yml',
  'config/secrets.yml',
  'config/environments/production.rb'

append :linked_dirs,
  'log',
  'tmp/pids',
  'tmp/cache',
  'tmp/sockets',
  'public/system'
