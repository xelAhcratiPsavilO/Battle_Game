require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:home)
  end
  get '/players' do
    erb(:players)
  end
  post '/players_selected' do
    session[:player1] = params[:name1]
    session[:player2] = params[:name2]
    redirect('/fight')
  end

  get '/fight' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:players_selected)
  end

  run! if app_file == $0

end
