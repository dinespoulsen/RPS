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

  before do
    @game = Game.instance
  end

  get '/play' do

    erb(:play)
  end

  get '/selection' do
    @player_choice = params[:choice]
    @opponent_choice = @game.opponent.play
      if @game.player_win?(@player_choice, @opponent_choice)
        @winner = @game.player
        @game.win_to(@winner)
      elsif @game.opponent_win?(@player_choice, @opponent_choice)
        @winner = @game.opponent
        @game.win_to(@winner)
      else
    end
    redirect to('/winner') if @game.found_winner?(@game.player, @game.opponent)
    erb(:selection)
  end

  get '/winner' do
    @winner = @game.winner?(@game.player, @game.opponent)
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
