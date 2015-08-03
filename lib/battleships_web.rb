require 'sinatra/base'

class battleshipsweb < Sinatra::Base
  get '/' do
    'Hello battleshipsweb!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
