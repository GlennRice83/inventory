# Set RAILS_ROOT and load the environment if it's not already loaded.
unless defined?(Rails)
  ENV['RAILS_ROOT'] = File.expand_path('../../', __FILE__)
  require File.expand_path('../../config/environment', __FILE__)
end

Teaspoon.configure do |config|
  config.suite do |suite|
    suite.use_framework :qunit

    suite.matcher =
      '{spec/javascripts,app/assets}/**/*_spec.{js,js.coffee,coffee}'

    suite.helper = 'spec_helper'

    suite.stylesheets = %w(teaspoon teaspoon_custom)

    suite.javascripts = ['qunit/1.14.0', 'teaspoon-qunit']

  end
end
