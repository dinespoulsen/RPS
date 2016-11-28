require 'sinatra/base'
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

class RockPaperScissor < Sinatra::Base
  get '/' do
    @game = nil
    erb(:index)
  end

  post '/name' do
    @game = Game.start_game(params[:name], params[:name2])
    redirect to('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/multi-players' do
    @game.choice.nil? ? @player_choice = params[:choice] : @player_choice = @game.choice
    @opponent_choice = @game.opponent.play
      if @game.player_win?(@player_choice, @opponent_choice)
        @game.win_to(@game.player)
      elsif @game.opponent_win?(@player_choice, @opponent_choice)
        @game.win_to(@game.opponent)
      else
    end
    redirect to('/winner') if @game.found_winner?(@game.player, @game.opponent)
    erb @game.result(@player_choice, @opponent_choice)
  end

  get '/selection' do
    @game.save_choice(params[:choice]) if @game.opponent.is_a? Player
    redirect to('/play') if !@game.choice.nil?


    @game.choice.nil? ? @player_choice = params[:choice] : @player_choice = @game.choice
    @opponent_choice = @game.opponent.play
      if @game.player_win?(@player_choice, @opponent_choice)
        @game.win_to(@game.player)
      elsif @game.opponent_win?(@player_choice, @opponent_choice)
        @game.win_to(@game.opponent)
      else
    end
    redirect to('/winner') if @game.found_winner?(@game.player, @game.opponent)
    erb @game.result(@player_choice, @opponent_choice)
  end

  get '/winner' do
    @winner = @game.winner?(@game.player, @game.opponent)
    erb(:winner)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
