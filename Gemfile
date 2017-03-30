source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Server
gem 'rails', '~> 5.0.1'
gem 'pg'
gem 'puma', '~> 3.0'

# Auth
gem 'knock'

group :development, :test do
  # Develop and test with sqlite3 for now
  gem 'sqlite3'

  gem 'minitest-rails'
  # Call 'byebug' in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Fabricate real models as test data
  gem 'factory_girl_rails'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Deployment
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-passenger'
  gem 'capistrano-config_provider', github: 'mauriciopasquier/capistrano-config_provider'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
