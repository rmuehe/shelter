# Shelter Reservation System

## Getting Started

  ruby 3.0.2
  
  rails 6.1.4.6
  
  sqlite3 3.36.0
  
  brew 3.3.4
  
  node v17.0.1
  
  yarn 1.22.17

## System dependencies
gem 'devise', '~> 4.2' 

gem 'devise-bootstrapped', github: 'king601/devise-bootstrapped', branch: 'bootstrap4'


### In the gemfile add to "group :development, :test do"
gem 'rspec-rails'

gem 'factory_bot_rails'

gem 'faker', '~> 2.20'

gem 'rails-controller-testing'

gem 'rexml'

## Booting up
Run in the terminal
> bundle install
> bin/rails s 

And open a tab on localhost:3000

## Database creation
> db:migrate


## How to run the test suite
> bundle exec rspec


* Configuration
* Database initialization
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...
