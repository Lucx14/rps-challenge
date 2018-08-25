require 'player'

describe Player do
  let(:player) { described_class.new('Luc', 'rock') }
  describe '#name' do
    it "should return the player name" do
      expect(player.name).to eq('Luc')
    end
  end

  describe '#choice' do
    it 'should return the player choice' do
      expect(player.choice).to eq('rock')
    end
  end
end
