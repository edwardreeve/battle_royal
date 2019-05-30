require 'sinatra/base'

# The world's greatest fighting game
class BattleRoyale < Sinatra::Application
  configure do
    enable :sessions
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player_1] = params[:Player_1]
    session[:Player_2] = params[:Player_2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player_1]
    @player2 = session[:Player_2]
    erb :play
  end

  post '/play' do
    redirect '/attack'
  end

  get '/attack' do
    @player1 = session[:Player_1]
    @player2 = session[:Player_2]
    erb :attacked
  end
end
