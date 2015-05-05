class Adult
  def initialize
    @sober = true
    @count = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @count += 1
    @sober = @count > 2 ? false : true
  end
end
