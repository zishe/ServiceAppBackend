source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.2.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 0.18"
# Use Puma as the app server
gem "puma"
# Use SCSS for stylesheets
gem "sass-rails"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "mini_racer", platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
gem "redis"
# Use ActiveModel has_secure_password
gem "bcrypt"

# Use ActiveStorage variant
gem "mini_magick"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

gem "acts-as-taggable-on", "~> 6.0"
gem "administrate"
gem "awrence"
gem "aws-sdk-s3", require: false
gem "devise"
gem "devise_token_auth"
gem "dotenv-rails"
gem "jsonapi-rails"
gem "omniauth"
gem "omniauth-facebook"
gem "rack-attack"
gem "rack-cors"

gem "administrate-field-select", "~> 2.0", require: "administrate/field/select_basic"
gem "select2-rails"

gem "graphql", "~> 1.9.0.pre1"
gem "serviceworker-rails"

gem "skylight"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry-byebug", "~> 3.6"
  gem "capybara"

  gem "derailed", "~> 0.1"
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker", git: "https://github.com/stympy/faker.git", branch: "master"
  gem "fix-db-schema-conflicts", github: "thepracticaldev/fix-db-schema-conflicts", branch: "master"
  gem "rspec-rails"
  gem "rubocop", "~> 0.59", require: false
  gem "rubocop-rspec", "~> 1.29"
  gem "spring"
  gem "spring-commands-rspec", "~> 1.0"
  gem "timecop"
  gem "webmock"

  gem "active_record_query_trace"
  gem "json_matchers"

  gem "annotate", require: false
  gem "letter_opener"

  gem "memory_profiler", "~> 0.9"
  gem "parallel_tests", "~> 2.27"

  gem "rspec-retry", "~> 0.6"

end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring-watcher-listen", "~> 2.0.0"

  gem "guard", "~> 2.15", require: false
  gem "guard-livereload", "~> 2.5", require: false
  gem "guard-rspec", "~> 4.7", require: false
  gem "graphiql-rails"

  gem "better_errors", "~> 2.5"
  gem "binding_of_caller", "~> 0.8"
  gem "brakeman", "~> 4.3", require: false
  gem "bullet", "~> 5.9"
  gem "derailed_benchmarks", "~> 1.3"
  gem "guard", "~> 2.15", require: false
  gem "guard-livereload", "~> 2.5", require: false
  gem "guard-rspec", "~> 4.7", require: false
  gem "rb-fsevent", "~> 0.10", require: false

  gem "bundler-audit"
end

group :test do
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "simplecov-console", require: false
  gem "simplecov-lcov", require: false

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
