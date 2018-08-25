require 'sinatra/base'


class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @player_1_name = session[:player_1_name]
    erb :welcome
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0

end
