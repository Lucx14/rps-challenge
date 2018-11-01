require_relative 'player'
require_relative 'computer'

class Game

  GAME_OUTCOMES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player, :computer


  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end


  def win?
    true
  end





end
