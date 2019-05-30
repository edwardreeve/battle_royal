require 'sinatra/base'

class BattleRoyale < Sinatra::Application
  configure do
    enable :sessions
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player_1] = params[:Player_1]
    session[:Player_2] = params[:Player_2]
    redirect '/play'
  end

  get '/play' do
    @Player_1 = session[:Player_1]
    @Player_2 = session[:Player_2]
    erb :play
  end
end
