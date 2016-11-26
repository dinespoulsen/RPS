#Acts as the computer playing the user
class Opponent
DEFAULT_NAME = "MR. Master Gamer"
DEFAULT_CHOICES = ["Rock", "Paper", "Scissors"]
DEFAULT_WINS = 0

  attr_reader :name, :choices, :wins

  def initialize(name = DEFAULT_NAME, wins = DEFAULT_WINS, choices = DEFAULT_CHOICES)
    @name = name
    @choices = choices
    @wins = wins
  end

  def play
    choices.sample
  end

  def add_win
    self.wins += 1
  end

  def won?
    wins == 2
  end

  def won_game?
    wins == 2
  end

  private
  attr_writer :wins

end
