#Finds the winner of Rock Paper Scissors
class RpsGame

  def play(player_choice, opponent_choice)
    return nil if player_choice == opponent_choice
    return true if player_choice == "Rock" && opponent_choice == "Scissors"
    return true if player_choice == "Scissors" && opponent_choice == "Paper"
    return true if player_choice == "Paper" && opponent_choice == "Rock"
    false
  end

end
