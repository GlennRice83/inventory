if Rails.env.development? || Rails.env.test?
  require 'rspec/core/rake_task'

  desc 'Generate API request documentation from API specs'
  RSpec::Core::RakeTask.new('api_docs:generate') do |t|
    ENV['API_DOC_DEFINED_ORDER'] = 'set'
    t.pattern = 'spec/api/**/*_spec.rb'
    t.rspec_opts = ['--format RspecApiDocumentation::ApiFormatter']
  end
end
