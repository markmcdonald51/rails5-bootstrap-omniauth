source 'https://rubygems.org'
ruby '2.3.0'

# server related gems
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
gem 'puma'
gem 'pg'
gem 'devise', '>= 4.0.0.rc2'
gem 'omniauth-google-oauth2'
gem 'cancancan'
gem 'rest-client'
gem 'active_model_serializers', '>= 0.10.0.rc5'

# front-end related gems
gem 'slim-rails', '~> 3.0.1'
gem 'devise-bootstrap-views'

# JS
gem 'jquery-rails', '~> 4.1.1'
gem 'uglifier', '>= 1.3.0'
gem 'js-routes'

# CSS
gem 'normalize-rails', '~> 3.0.3'
gem 'sass-rails', '~> 5.0.3'
gem 'autoprefixer-rails', '~>  5.1.11'

# rack/cors
gem 'font_assets'

# ENV
gem 'figaro'

group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'rack-timeout', '~> 0.3.2'
  gem 'newrelic_rpm'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'web-console', '~> 3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # LiveReload
  gem "guard", ">= 2.2.2", :require => false
  gem "guard-livereload",  :require => false
  gem "rack-livereload"
  gem "rb-fsevent",        :require => false
end

group :test, :development do
  gem 'mocha'
  gem 'factory_girl_rails'
  gem 'pry-rescue'
  gem 'simplecov'
  gem 'minitest-reporters'
  gem 'faker'
  gem 'byebug'
  gem 'temping'
  gem 'database_rewinder'
  gem 'shoulda-matchers'
  gem 'html2slim'
  gem 'quiet_assets'
  gem 'pry'
  gem 'pry-rails'
  gem 'bullet'
  gem 'foreman'
  gem 'seed_dump'
  gem 'meta_request'
end

