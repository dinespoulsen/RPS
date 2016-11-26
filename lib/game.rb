require_relative 'player.rb'
require_relative 'opponent.rb'

class Game

  attr_reader :player, :opponent

  def initialize(name = Player::DEFAULT_NAME, player_klass = Player, opponent_klass = Opponent)
    @player = player_klass.new(name)
    @opponent = opponent_klass.new
  end

  def win_to(winner)
    winner.add_win
  end

end
