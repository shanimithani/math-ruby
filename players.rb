class Players
  attr_accessor :life_remaining, :score, :player_number

  def initialize(life_remaining, score, player_number)
    @life_remaining = life_remaining
    @score = score
    @player_number = player_number
  end

end