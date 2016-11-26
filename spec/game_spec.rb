require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player) {double(:player)}
  let(:opponent) {double(:opponent)}


  describe "should start a game with 1 player" do
    it "should have a player" do
      expect(subject.player).not_to be_nil
    end

    it "should have an opponent" do
      expect(subject.opponent).not_to be_nil
    end
  end

  describe "When playing a game" do
    it "should be able to give out wins" do
      expect(player).to receive(:add_win)
      game.win_to(player)
    end

    it "should return true when player has won" do
      expect(player).to receive(:won_game?)
      expect(opponent).to receive(:won_game?)
      game.found_winner?(player, opponent)
    end
  end
end
