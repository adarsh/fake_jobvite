ENV['RACK_ENV'] = 'test'

require 'awesome_print'
require 'rack/test'
require 'rspec'
require 'rest-client'
require 'webmock'

require 'fake_jobvite'


RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.before(:each) do
    def app
      Sinatra::Application
    end
  end
end

WebMock.disable_net_connect!(allow_localhost: true)
WebMock.stub_request(:get, /api.jobvite.com/).to_rack(FakeJobvite)
