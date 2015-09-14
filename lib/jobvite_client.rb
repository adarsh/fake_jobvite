require 'ox'

class JobviteClient
  def initialize(response_body)
    @response_body = response_body
  end

  def first_name
    binding.pry
    parsed_response
  end

  private

  attr_reader :p, :response_body

  def parsed_response
    @p ||= Ox.parse(response_body)
  end
end
