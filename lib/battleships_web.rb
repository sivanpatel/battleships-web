require 'sinatra/base'
require 'battleships'

class Battleshipsweb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    @player = params[:name]
    erb :new_game
  end

  get '/start_game' do
    erb :start_game
  end

  get '/single_player' do
    erb :single_player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
