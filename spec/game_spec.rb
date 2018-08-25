require 'game'


describe Game do
  let(:player1) { double :player }
  let(:game) { described_class.new(:player1)}

  describe '#decide winner' do
    it "decides who wins the game" do
      expect(game.decide_winner).to eq(:player1)
    end
  end
end
