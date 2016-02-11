require 'sinatra'
class Sin_rest < Sinatra::Base

  get '/' do
    "Hello World #{params[:name]}".strip
  end
end
