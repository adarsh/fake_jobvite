require 'spec_helper'

RSpec.describe 'FakeJobvite' do
  it 'returns the candidate data' do
    response = RestClient.get('https://api.jobvite.com/candidates')

    expect(response.code).to eq(200)
    expect(response.body).to eq 'hiya'
  end
end
