source 'https://rubygems.org'
ruby '2.1.2'

gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"
gem 'active_model_serializers'
gem 'aws-sdk-core', '~> 2.0'
gem 'bcrypt'
gem 'pg'
gem 'unicorn'
gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'devise'
gem 'sweet-alert'
gem 'sweet-alert-confirm'
gem 'carrierwave', '0.10.0'
gem 'mini_magick', '3.8.0'
gem 'fog', '1.23.0'

group :development do
  gem 'guard-rspec'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'pry-byebug'
  gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
end

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
end