class Dragon

  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eating_times = 0
  end

  def eat
    @eating_times = @eating_times + 1
  end

  def hungry?
    @eating_times >= 3 ? false : true
  end
end