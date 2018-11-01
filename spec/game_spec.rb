require 'game'

describe Game do
  let(:mockComputer) { double :computer, computer_choice: :paper }
  let(:mockPlayer) { double :player, choice: :scissors }
  let(:win_game) { described_class.new(mockPlayer, mockComputer) }
  
  let(:mockComputer2) { double :computer, computer_choice: :rock }
  let(:mockPlayer2) { double :player, choice: :scissors }
  let(:lose_game) { described_class.new(mockPlayer2, mockComputer2) }

  let(:mockComputer3) { double :computer, computer_choice: :rock }
  let(:mockPlayer3) { double :player, choice: :rock }
  let(:draw_game) { described_class.new(mockPlayer3, mockComputer3) }
  
  describe '#win?' do
    it "returns true if player has won" do
      expect(win_game.win?).to eq(true)
    end
  end

  describe '#lose?' do
    it "returns true if the player lost" do
      expect(lose_game.lose?).to eq(true)
    end
  end

  describe '#draw?' do
    it "returns true if the game was a draw" do
      expect(draw_game.draw?).to eq(true)
    end
  end
end
