require 'sinatra/base'
require_relative 'game'

class Battleshipsweb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index, layout: false
  end

  get '/new_game' do
    erb :new_game
  end

  post '/new_game' do
    @player = params[:first_name]
    erb :new_game
  end

  get '/start_game' do
    $game = Game.new
    erb :start_game
  end

  get '/single_player' do
    erb :single_player, layout: false
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
