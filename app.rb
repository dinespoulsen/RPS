require 'sinatra/base'
require_relative 'lib/game.rb'

class RockPaperScissor < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @game = Game.new(params[:name])
    erb(:play)
  end

  post '/selection' do
    @game
    erb(:selection)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
