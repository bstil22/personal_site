require 'sinatra'
require 'json'
require 'tilt/erb'

class Sin_rest < Sinatra::Base

  get '/' do
    content_type :json
    {name: "Hello World #{params[:name]}"}.to_json
  end

  get '/about' do
    erb :about
  end

  get '/index' do
    erb :index
  end

end
