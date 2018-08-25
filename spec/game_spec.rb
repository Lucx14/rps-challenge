require 'game'


describe Game do
  let(:player1) { double :player }
  let(:game) { described_class.new(:player1)}


  describe '#decide_winner' do
    it "decides who wins the game" do
      expect(game.decide_winner).to eq(:player1)
    end
  end

  describe '#computer_choice' do

    it 'randomly chooses rock paper or scissors for the computers choice' do
      expect(game.computer_choice).to eq('paper').or eq('rock').or eq('scissors')
    end
  end



end
