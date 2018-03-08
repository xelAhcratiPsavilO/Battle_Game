require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    erb(:home)
  end
  get '/players' do
    erb(:players)
  end
  post '/players_selected' do
    @player1 = params[:name1]
    @player2 = params[:name2]
    erb(:players_selected)
  end

  run! if app_file == $0

end
