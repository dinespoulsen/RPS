require 'game'

describe Game do
  subject(:game) {described_class.new}

  describe "should start a game with 1 player" do
    it "should have a player" do
      expect(subject.player).not_to be_nil
    end
  end
end
