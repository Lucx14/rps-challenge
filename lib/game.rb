require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer


  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end


  def decide_winner
    if computer.computer_choice == player.choice
      # p computer.computer_choice
      # sam said that me printing these things is calling the method again and so what i see on screen is not actually what i want!
      # p player.choice
      'The game was a draw'
    else
      # p computer.computer_choice
      # p player.choice
      'NOT a draw'
    end
  end





end
