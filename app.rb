require 'sinatra/base'
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

class RockPaperScissor < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.start_game(params[:name])
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/selection' do
    @game = Game.instance
    @player_choice = params[:choice]
    @opponent_choice = @game.opponent.play

    if @game.rps(@player_choice, @opponent_choice)
      @winner = @game.player
    else
      @winner = @game.opponent
    end
    erb(:selection)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
