source 'https://rubygems.org'
ruby '2.3.0'

# server related gems
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
gem 'puma'
gem 'pg'
gem 'devise', '>= 4.0.0.rc2'

gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'
gem 'omniauth-google-oauth2'

gem 'cancancan'
# gem 'rest-client'
gem 'active_model_serializers', '>= 0.10.0.rc5'

# front-end related gems
gem 'slim-rails', '~> 3.0.1'
gem 'devise-bootstrap-views'

# JS
gem 'jquery-rails', '~> 4.1.1'
gem 'uglifier', '>= 1.3.0'
gem 'js-routes'

# CSS
gem 'sass-rails', '~> 5.0.3'
gem 'bootstrap-sass'
# gem 'devise-bootstrap-views'
gem 'autoprefixer-rails', '~>  5.1.11'

# rack/cors
gem 'font_assets'

group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'rack-timeout', '~> 0.3.2'
  gem 'newrelic_rpm'
end

group :development do
  gem 'figaro'
  gem 'rubocop', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'

  # LiveReload
  gem 'guard', '>= 2.2.2', require: false
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rb-fsevent', require: false

  # CLI utilities
  gem 'html2slim', require: false
  gem 'seed_dump', require: false

  gem 'bullet'
  gem 'foreman'
  gem 'quiet_assets'

  # FE generators
  gem 'rails_layout', require: false
end

group :test, :development do
  gem 'byebug'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :test do
  gem 'temping'
  gem 'mocha'
  gem 'factory_girl_rails'
  gem 'database_rewinder'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'faker'
end
