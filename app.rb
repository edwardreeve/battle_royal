require 'sinatra/base'
require 'player'

# The world's greatest fighting game
class BattleRoyale < Sinatra::Application
  configure do
    enable :sessions
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:Player_1])
    $player2 = Player.new(params[:Player_2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  post '/play' do
    redirect '/attack'
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attacked
  end
end
