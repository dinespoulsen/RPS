require 'game'
require 'player'

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

    it "should be able to add two players" do
      game2 = Game.new("name", "name2")
      expect(game2.opponent).to be_kind_of(Player)
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
