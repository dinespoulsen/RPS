require_relative 'player.rb'
require_relative 'opponent.rb'
require_relative 'rps_game.rb'

class Game

  attr_reader :player, :opponent
  attr_accessor :choice

  def initialize(name = Player::DEFAULT_NAME, name_two = '', player_klass = Player, opponent_klass = Opponent)
    @player = player_klass.new(name)
    @opponent = player_klass.new(name_two) if !name_two.empty?
    @opponent = opponent_klass.new if name_two.empty?
  end

  def save_choice(choice)
    self.choice = choice
  end

  def win_to(winner)
    winner.add_win
  end

  def self.instance
    @game
  end

  def self.start_game(name, name_two = '')
    @game = Game.new(name, name_two)
  end

  def found_winner?(player, opponent)
    player.won_game? || opponent.won_game?
  end

  def winner?(player, opponent)
    return player if player.wins == 2
    opponent
  end

  def result(player_choice, opponent_choice)
    return :draw if draw?(player_choice, opponent_choice)
    player_win?(player_choice, opponent_choice) ? :win : :loss
  end

  def player_win?(player_choice, opponent_choice)
    rps(player_choice, opponent_choice) == true
  end

  def opponent_win?(player_choice, opponent_choice)
    rps(player_choice, opponent_choice) == false
  end



  private

  def draw?(player_choice, opponent_choice)
    rps(player_choice, opponent_choice) == nil
  end

  def rps(player_choice, opponent_choice, rps_game_klass = RpsGame)
    rps_game_klass.new.play(player_choice, opponent_choice)
  end
end
