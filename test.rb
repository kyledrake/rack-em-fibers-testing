require './app.rb'
Bundler.require :test
require 'minitest/autorun'

describe App do
  include Rack::Test::Methods
  def app; App end

  describe 'any request' do
    it 'returns google.com with EM' do
      get '/get_google'
      last_response.status.must_equal 200
      (last_response.body.length > 0).must_equal true
    end
  end
end
