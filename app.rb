require 'sinatra/base'
require './lib/game.rb'
require './lib/computer.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @player_name = session[:player_name]
    erb :welcome
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:player_choice].to_sym.downcase
    session[:computer_choice] = Computer.new.comp_choice
    redirect '/play'
  end
  
  run! if app_file == $0

end
