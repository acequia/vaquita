# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# Load the git plugin
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/rails/migrations'
require 'capistrano/passenger'

require 'capistrano/config_provider'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
