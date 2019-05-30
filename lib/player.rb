
# stores info about the battlers
class Player
  attr_reader :name, :hit_points
  DEFAULT_DAMAGE = 10
  STARTING_POINTS = 100

  def initialize(name, points = STARTING_POINTS)
    @name = name
    @hit_points = points
  end

  def damage
    @hit_points -= DEFAULT_DAMAGE
  end
end
