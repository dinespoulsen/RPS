require 'player'

describe Player do
  subject(:player) {described_class.new}

  describe "when starting a game" do
    it "should have a default name" do
      expect(player.name).to eq Player::DEFAULT_NAME
    end

    it "should have 0 wins" do
      expect(player.wins).to eq Player::DEFAULT_WINS
    end
  end

  describe "When playing a game" do
    it "should be able to add a win" do
      player.add_win
      expect(player.wins).to eq 1
    end

    it "should be able to check if won" do
      player.add_win
      player.add_win
      expect(player.won?).to eq true
    end
  end
end
