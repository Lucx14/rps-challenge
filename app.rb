require 'sinatra/base'
require './lib/player.rb'


class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # using global variable bad practice learn how to avoid!!
    $player_1 = Player.new(params[:player_1_name])
    redirect '/welcome'
  end

  get '/welcome' do
    @player = $player_1
    erb :welcome
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    $player_1.choice = params[:user_choice]
    redirect '/result'
  end

  get '/result' do
    @player = $player_1
    erb :result
  end



  run! if app_file == $0

end
