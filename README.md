# Shelter Reservation System

Run in the terminal
> bin/rails s 

And open a tab on localhost:3000 after installing:

* ruby 3.0.2
* rails 6.1.4.6
* sqlite3 3.36.0
* brew 3.3.4
* node v17.0.1
* yarn 1.22.17

* System dependencies

gem 'rails', '~> 6.1.4', '>= 6.1.4.4'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'devise', '~> 4.2' 
gem 'bootsnap', '>= 1.4.4', require: false
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker', '~> 2.20'
  gem 'rails-controller-testing'
  gem 'rexml'
end
group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end
group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise-bootstrapped', github: 'king601/devise-bootstrapped', branch: 'bootstrap4'

* Configuration

* Database creation
> db:migrate

* Database initialization

* How to run the test suite
> bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...
