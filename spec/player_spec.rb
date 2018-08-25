require 'player'

describe Player do
  let(:player) { described_class.new('Luc') }
  describe '#name' do
    it "should return the player name" do
      expect(player.name).to eq('Luc')
    end
  end
end
