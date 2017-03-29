server 'mauriciopasquier.com.ar', user: 'apps', roles: %w{app web db}

set :stage_name, 'staging'
set :deploy_to, '/srv/http/vaquita.mauriciopasquier.com.ar'

set :branch, 'develop'

set :passenger_restart_with_touch, true
