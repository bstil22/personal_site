require 'sinatra'
require 'json'

class Sin_rest < Sinatra::Base

  get '/' do
    content_type :json
    {name: "Hello World #{params[:name]}"}.to_json
  end
end
