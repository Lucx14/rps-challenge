require 'game'


describe Game do
  let(:mockComputer) { double :computer, computer_choice: 'paper' }
  let(:mockPlayer) { double :player, choice: 'rock' }
  let(:game) { described_class.new(:mockPlayer, :mockComputer)}

  describe '#decide_winner' do
    it "decides who wins the game" do
      expect(game.decide_winner).to eq(:mockComputer)
    end
  end







end
