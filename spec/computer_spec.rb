require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#comp_choice' do
    it "chooses a weapon at random" do
      expect(Computer::RPS).to include(computer.comp_choice)
    end
  end
end
