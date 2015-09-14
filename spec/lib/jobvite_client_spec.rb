require 'spec_helper'
require 'jobvite_client'

RSpec.describe 'JobviteClient' do
  it 'adds convenience methods to get at the data' do
    response = RestClient.get('https://api.jobvite.com/candidates')

    client = JobviteClient.new(response.body)

    expect(client.first_name).to eq('frank')
  end
end
