source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0' 
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails'

gem 'devise', '~> 4.1.1'

gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem "sprockets"
gem "sprockets-es6"
gem "react-rails"
gem "cloudinary"
gem "jquery-slick-rails"
gem "sidekiq"
gem 'summernote-rails'
gem 'bootstrap-sass'

group :development, :test do
  gem 'pry', '~> 0.10.3'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'database_cleaner', '~> 1.5.3'
  gem 'simplecov', '~> 0.11.2'
  gem 'factory_girl_rails', '~> 4.7.0'
end

group :development do
  gem 'web-console', '~> 2.0'

  gem 'spring'

  gem 'capistrano-sidekiq', require: false
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

group :produection do
	gem 'rails_12factor'
	gem 'puma'
end
