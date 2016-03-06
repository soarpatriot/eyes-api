source "https://ruby.taobao.org"

gem "i18n"
gem "rest-client", "~> 1.6.7"
gem 'httparty'
gem 'grape'
gem 'grape-entity'
gem 'grape-kaminari'
gem 'grape-swagger'
gem 'rack-cors'

gem 'spreadsheet'

gem 'mysql2'

gem 'gretel'
gem 'acts_as_votable', '~> 0.10.0'
gem 'acts_as_tree'
gem 'settingslogic'

gem 'god'

gem 'awesome_nested_set'
gem 'uuidtools'
gem 'pry'

gem 'activerecord', '~> 4.2.5.2'
gem 'actionmailer', '~> 4.2.5.2'
gem 'bcrypt'
gem 'delete_paranoid'

# gem 'carrierwave', :require => %w(carrierwave carrierwave/orm/activerecord)
# gem 'carrierwave-qiniu', github: 'huobazi/carrierwave-qiniu' 

group :production do
  gem 'goliath'
  gem 'em-synchrony', "1.0.3" 
  gem 'em-http-request'
end



group :development do
  gem 'guard-rspec'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
end

group :test do
  gem 'factory_girl'
  gem 'rspec'
  gem 'ci_reporter'
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  gem 'database_cleaner'

  gem 'webmock'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rack-test', require: 'rack/test'
end
