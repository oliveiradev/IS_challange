source 'https://rubygems.org'
source 'https://rails-assets.org'



gem 'rails', '4.2.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
gem 'rails-assets-bootstrap'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'simple_form'
gem 'haml', '~> 4.0.4'

gem 'enumerate_it', '~> 1.2.0'
gem 'pg', '~> 0.17.1'

group :doc do
  gem 'sdoc', require: false
end


group :development do
  gem 'spring'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-migrate'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.1'
  gem 'shoulda-matchers', '~> 2.6.1' , require: false

  #gem 'rails-assets-angular-mocks', '1.2.14'
  #gem 'rails-assets-angular-scenario', '1.2.14'
  gem 'database_cleaner'
  gem 'awesome_print'
  gem 'pry-rails'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'faker', '~> 1.5.0'
end

group :production do
  gem 'rails_12factor'
end

ruby "2.2.1"