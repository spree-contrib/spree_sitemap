require 'simplecov'
SimpleCov.start do
  add_group 'Libraries', 'lib'
  add_filter 'spec'
end

ENV['RAILS_ENV'] ||= 'test'

begin
  require File.expand_path('../dummy/config/environment', __FILE__)
rescue LoadError
  puts 'Could not load dummy application. Please ensure you have run `bundle exec rake test_app`'
  exit
end

require 'rspec/rails'
require 'ffaker'

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
end

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |file| require file }
