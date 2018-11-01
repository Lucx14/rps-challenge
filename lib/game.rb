class Game

  GAME_OUTCOMES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

  attr_reader :player_name, :player_choice, :computer_choice 

  def initialize(variables)
    @player_name = variables["player_name"]
    @player_choice = variables["player_choice"]
    @computer_choice = variables["computer_choice"]
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  private

  def result
    return if @computer_choice.nil?
    GAME_OUTCOMES[@player_choice][@computer_choice]
  end

end
