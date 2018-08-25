require 'sinatra/base'


class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/welcome' do
    @player_1_name = params[:player_1_name]
    erb :welcome
  end

  run! if app_file == $0

end
