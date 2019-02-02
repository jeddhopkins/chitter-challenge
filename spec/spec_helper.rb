require 'simplecov'
require 'simplecov-console'
require 'capybara/rspec'
require 'sinatra'
require 'rspec'
require 'timecop'
require_relative './../app.rb'
Capybara.app = ChitterChallenge

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|

  config.include Rack::Test::Methods
  config.before(:each) do
    DataMapper.setup(:default, 'postgres://localhost/Chitter_Test')
    DataMapper.finalize
    DataMapper.auto_migrate!
  end
end
