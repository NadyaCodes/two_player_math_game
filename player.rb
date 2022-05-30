require_relative './game'
class Player
  attr_reader :number
  attr_accessor :points, :lost

  def initialize(num)
    @number = num
    @points = 3
    @winner = false
  end

  def lost?
    if points == 0
      @lost = true
    end
  end

end