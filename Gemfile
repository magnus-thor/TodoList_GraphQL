# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.1"

gem "bootsnap", ">= 1.1.0", require: false
gem "graphql", "~> 1.7", ">= 1.7.14"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.2"

group :development, :test do
  gem "pry-rails", "~> 0.3.6"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "database_cleaner", "~> 1.6", ">= 1.6.2"
  gem "factory_bot_rails", "~> 4.8", ">= 4.8.2"
  gem "faker", "~> 1.8", ">= 1.8.7"
  gem "rspec-rails", "~> 3.7", ">= 3.7.2"
  gem "shoulda-matchers", "~> 3.1", ">= 3.1.2"
  gem "rubocop", "0.66", require: false
  gem "rubocop-rspec"
end