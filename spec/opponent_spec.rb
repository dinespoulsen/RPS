require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}

  describe "when instantiated" do
    it "should have a default name" do
      expect(opponent.name).to eq Opponent::DEFAULT_NAME
    end

  it "should have zero wind" do
    expect(opponent.wins).to eq Opponent::DEFAULT_WINS
  end

    it "should have a selection of choices" do
      expect(opponent.choices).to eq Opponent::DEFAULT_CHOICES
    end
  end

  describe "When playing a game" do
    it "should be able to select a choice" do
      expect(opponent.choices).to include(opponent.play)
    end

    it "should be able to add a win" do
      opponent.add_win
      expect(opponent.wins).to eq 1
    end

    it "should be able to check if won" do
      opponent.add_win
      opponent.add_win
      expect(opponent.won?).to eq true
    end
  end
end
