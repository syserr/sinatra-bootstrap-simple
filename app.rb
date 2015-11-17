require 'sinatra/base'
require 'sinatra/reloader'

class App < Sinatra::Base
  use Rack::Session::Pool
  register Sinatra::Reloader

  get '/' do
    @randy = rand(3000)

    session[:count] = 0 if session[:count] == nil
    session[:count] += 1

    erb :index
  end
end
