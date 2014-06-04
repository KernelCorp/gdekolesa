source 'https://rubygems.org'

# core
gem 'rails', '4.0.1'
gem 'mongoid', '4.0.0.beta1'


#front

# hadlers
gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'slim-rails'
gem 'jbuilder', '~> 1.2'

# assets
gem 'jquery-rails'
gem 'turbolinks'

# various
gem 'uglifier', '>= 1.3.0'


#middle
gem 'activeadmin',         github: 'gregbell/active_admin', ref: '65aae6b68e78aad3071b2f85242b19fd3fccf426'
gem 'activeadmin-mongoid', github: 'elia/activeadmin-mongoid', branch: 'rails4'

gem 'devise'


#back

# models extensions
gem 'mongoid-paperclip', require: 'mongoid_paperclip'
gem 'mongoid_slug'

# various
gem 'rails-i18n', '~> 4.0.0'


group :test, :development do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner', require: false
  gem 'cucumber-rails', require: false
  gem 'selenium-webdriver'
  gem 'rack'
  gem 'coveralls', require: false
  gem 'unicorn_service', require: false
  gem 'nginx-config', require: false
  gem 'email_spec'
end

group :development do
  gem 'quiet_assets'
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'net-ssh', '~> 2.7.0'
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
