ENV['RACK_ENV'] = 'test'

require_relative '../lib/hello'
require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sin_rest
  end

  def test_it_says_hello_world_in_json
    get '/'
    assert last_response.ok?
    assert_equal last_response.headers['Content-Type'], "application/json"
    assert_equal "#{{"name":"Hello World "}.to_json}", last_response.body
  end

  def test_it_says_hello_to_a_person
    get '/', :name => 'Simon'
    assert last_response.body.include?('Simon')
  end
end
