require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}

  describe "when instantiated" do
    it "should have a default name" do
      expect(opponent.name).to eq Opponent::DEFAULT_NAME
    end
  end
end
