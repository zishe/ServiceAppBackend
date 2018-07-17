source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
gem 'redis'
# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use ActiveStorage variant
gem 'mini_magick'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
# gem 'bootsnap', '>= 1.1.0', require: false

gem 'administrate'
gem 'acts-as-taggable-on', '~> 6.0'
gem 'aws-sdk-s3', require: false
gem 'dotenv-rails'
gem 'rack-cors'
gem 'rack-attack'
gem 'jsonapi-rails'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'devise_token_auth'
gem 'awrence'

gem "google-cloud-storage", "~> 1.8", require: false

gem 'administrate-field-select', '~> 2.0', require: 'administrate/field/select_basic'
gem 'select2-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'database_cleaner'
  gem 'spring'
  gem 'capybara'
  gem 'rubocop'
  gem 'webmock'
  gem 'timecop'

  gem 'json_matchers'
  gem 'bullet'
  gem 'active_record_query_trace'


  gem 'letter_opener'
  gem 'annotate', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'guard-rspec', require: false
  gem 'brakeman', require: false
end

group :test do
  gem 'simplecov', require: false
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
