class Game

  attr_reader :player


  def initialize(player)
    @player = player
  end


  def decide_winner
    player
  end

  def computer_choice
    ['rock', 'paper', 'scissors'].sample
  end




end
