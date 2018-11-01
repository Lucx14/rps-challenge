require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # using global variable bad practice learn how to avoid!!
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/welcome'
  end

  get '/welcome' do
    @game = $game
    erb :welcome
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    $game.player.choice = params[:user_choice]
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end
  
  run! if app_file == $0

end
