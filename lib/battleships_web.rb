require 'sinatra/base'

class Battleshipsweb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    "What's your name?"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
