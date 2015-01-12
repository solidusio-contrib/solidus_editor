require 'simplecov'
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'

begin
  require File.expand_path('../dummy/config/environment', __FILE__)
rescue LoadError
  puts 'Could not load dummy application. Please ensure you have run `bundle exec rake test_app`'
  exit
end

require 'rspec/rails'
require 'i18n-spec'
require 'ffaker'

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.mock_with :rspec
  config.raise_errors_for_deprecations!
  config.use_transactional_fixtures = false

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |file| require file }
