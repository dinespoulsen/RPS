require_relative 'player.rb'
require_relative 'opponent.rb'
require_relative 'rps_game.rb'

class Game

  attr_reader :player, :opponent

  def initialize(name = Player::DEFAULT_NAME, player_klass = Player, opponent_klass = Opponent)
    @player = player_klass.new(name)
    @opponent = opponent_klass.new
  end

  def win_to(winner)
    winner.add_win
  end

  def self.instance
    @game
  end

  def self.start_game(name)
    @game = Game.new(name)
  end

  def rps(player_choice, opponent_choice, rps_game_klass = RpsGame)
    rps_game_klass.new.play(player_choice, opponent_choice)
  end
end
