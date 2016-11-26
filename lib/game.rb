require_relative 'player.rb'

class Game

  attr_reader :player

  def initialize(name = Player::DEFAULT_NAME, player_klass = Player)
    @player = player_klass.new(name)
  end


end
