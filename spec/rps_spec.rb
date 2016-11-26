require 'rps_game.rb'


describe RpsGame do
  subject(:rps) {described_class.new}

  it "Should return true when player has rock and opponent has scissors" do
    expect(rps.play("Rock", "Scissors")).to be true
  end

  it "Should return true when player has scissors and opponent has paper" do
    expect(rps.play("Scissors", "Paper")).to be true
  end

  it "Should return true when player has Paper and opponent has Rock" do
    expect(rps.play("Paper", "Rock")).to be true
  end

  it "Should return 'draw' when player and opponen has a draw" do
    expect(rps.play("Paper", "Paper")).to be nil
  end
end
