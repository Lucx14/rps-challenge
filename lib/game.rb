require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer


  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end


  def decide_winner
    computer
  end





end
