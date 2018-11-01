require 'game'

describe Game do
  let(:game) { described_class.new(variables) }
  let(:variables) { { "player_name" => "Luc", "player_choice" => :rock, "computer_choice" => :scissors } }

  describe '#player_name' do
    it 'returns players name' do
      expect(game.player_name).to eq("Luc")
    end
  end

  describe '#player_choice' do
    it 'returns player choice' do
      expect(game.player_choice).to eq(:rock)
    end
  end

  describe '#computer_choice' do
    it 'returns computer choice' do
      expect(game.computer_choice).to eq(:scissors)
    end
  end

  context "decide winner" do

    let(:win_game) { game }
    let(:lose_game) { described_class.new(losing_variables) }
    let(:draw_game) { described_class.new(draw_variables) }

    let(:losing_variables) { { "player_name" => "Luc", "player_choice" => :rock, "computer_choice" => :paper } }
    let(:draw_variables) { { "player_name" => "Luc", "player_choice" => :rock, "computer_choice" => :rock } }

    describe '#win?' do
      it 'returns true if player_choice is :rock, and computer_choice is :scissors' do
        expect(win_game.win?).to eq(true)
      end
    end

    describe '#lose?' do
      it 'returns true if player_choice is :rock, and computer_choice is :paper' do
        expect(lose_game.lose?).to eq(true)
      end
    end

    describe '#draw?' do
      it 'returns true if player_choice is :rock, and computer_choice is :rock' do
        expect(draw_game.draw?).to eq(true)
      end
    end
  end
end
