require 'spec_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = :json
  config.request_headers_to_include = %w(Content-Type)
  config.response_headers_to_include = %w(Content-Type)
  config.keep_source_order = true
end

RSpec.configure do |config|
  if ENV['API_DOC_DEFINED_ORDER']
    config.order = :defined
  else
    config.order = :random
  end
end
