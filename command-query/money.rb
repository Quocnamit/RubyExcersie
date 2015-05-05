class Money

  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(value)
    @amount += value
  end

  def spend(value)
    @amount -= value
  end
end