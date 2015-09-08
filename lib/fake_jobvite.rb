require 'sinatra/base'

class FakeJobvite < Sinatra::Base
  get '/candidates' do
    body 'hiya'
    status 200
  end
end
