class Player

  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def take_damage(value)
    @hit_points -= value
  end

  def attack(player)
    player.take_damage(10)
  end
end
