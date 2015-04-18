class Clock
  def initialize
    @time = 6
  end

  def time
    @time
  end

  def wait
    @time = @time + 1
    @time = @time > 12 ? @time - 12 : @time
  end
end