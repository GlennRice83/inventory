source "https://rubygems.org"
ruby "2.1.0"
gem "rails", "4.0.2"


gem "pg"

# Use SCSS for stylesheets
gem "sass-rails", "~> 4.0.0"
gem "bootstrap-sass", "~> 3.0.3.0"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

gem "active_attr"

gem 'simple_enum', github: 'lwe/simple_enum', branch: 'ng', :require => 'simple_enum'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 1.2"

gem "acts_as_tree"

#gem "ruby-units"

gem "modernizr-rails"
gem "foundation-rails", "~> 5.0.3"

gem "money-rails"

gem "phys-units", "~> 0.9.6"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem "sdoc", require: false
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
  gem "rails-erd"
  gem "annotate"
end

group :development, :test do
  gem "awesome_print"
  gem "pry-rails"
  gem "debugger", "~> 1.6.3"
  gem "pry-debugger"
  gem "rspec-rails", "~> 2.14.0"
  gem "capybara"
  gem "factory_girl"
  gem "factory_girl_rails"
end

group :test do
  gem "launchy"
end

group :production, :staging do
  gem "unicorn"
  gem "rails_12factor"
end
