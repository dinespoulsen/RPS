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
end
