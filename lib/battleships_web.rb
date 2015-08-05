require 'sinatra/base'
require 'battleships'

class BattleshipsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions

  get '/' do
    erb :index, layout: false
  end

  get '/new_game' do
    erb :new_game
  end

  post '/new_game' do
    session[:player] = params[:name]
    redirect '/new_game' if session[:player] == ''
    redirect '/start_game'
    erb :new_game
  end

  get '/start_game' do
    erb :start_game
  end

  get '/single_player' do
    $game = Game.new(Player, Board)
    erb :single_player, layout: false
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
