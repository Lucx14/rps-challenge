require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#computer_choice' do
    it 'randomly chooses rock paper or scissors for the computers choice' do
      expect(computer.computer_choice).to eq('paper').or eq('rock').or eq('scissors')
    end
  end
end
