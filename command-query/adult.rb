class Adult
  def initialize
    @sober = true;
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @sober = true
  end
end
