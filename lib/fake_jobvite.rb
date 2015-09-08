require 'sinatra/base'

class FakeJobvite < Sinatra::Base
  get '/candidates' do
    content_type 'text/xml'
    body fixture_file('ResumeExample.xml')
    status 200
  end

  private

  def fixture_file(filename)
    File.open("fixtures/#{filename}", 'r').read
  end
end
