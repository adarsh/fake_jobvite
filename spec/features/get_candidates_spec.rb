require 'spec_helper'

RSpec.describe 'FakeJobvite' do
  it 'responds with a 200' do
    response = RestClient.get('https://api.jobvite.com/candidates')

    expect(response.code).to eq(200)
  end

  it 'sends back the fixture file' do
    response = RestClient.get('https://api.jobvite.com/candidates')
    file_results = File.open('fixtures/ResumeExample.xml', 'r').read

    expect(response.body).to eq file_results
  end

  it 'sends back XML data' do
    response = RestClient.get('https://api.jobvite.com/candidates')
    content_type = response.headers.fetch(:content_type)

    expect(content_type).to include 'text/xml'
  end
end
