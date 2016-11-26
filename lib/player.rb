#Holds information about the player
class Player
DEFAULT_NAME = "Isabel"
DEFAULT_WINS = 0

  attr_reader :name, :wins

  def initialize(name = DEFAULT_NAME, wins = DEFAULT_WINS)
    @name = name
    @wins = wins
  end

  def add_win
    self.wins += 1
  end

  def won?
    wins == 2
  end

  private

  attr_writer :wins

end
