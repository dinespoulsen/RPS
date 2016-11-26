#Holds information about the player
class Player
DEFAULT_NAME = "Isabel"
DEFAULT_WINS = 0

  attr_reader :name, :wins

  def initialize(name = DEFAULT_NAME, wins = DEFAULT_WINS)
    @name = name
    @wins = wins
  end

end
