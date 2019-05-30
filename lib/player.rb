
# stores info about the battlers
class Player
  attr_reader :name, :hit_points
  def initialize(name, points = 100)
    @name = name
    @hit_points = points
  end

  def attack
    @hit_points -= 10
  end
end
