class Player

  DEFAULT_HIT_POINTS = 60

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def receive_damage(amount)
    @hit_points -= amount
  end


end
