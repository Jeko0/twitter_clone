source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "devise"
gem "jbuilder"
gem "jsbundling-rails"
gem "ordinare"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4"
gem "redis", "~> 4.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  gem "pry-rails"
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'main'
  gem 'rspec-rails', '~> 6.0.0'
end

group :development do
  gem "web-console"
end

group :test do 
  gem "shoulda-matchers", "~>5.0"
end
