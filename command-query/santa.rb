class Santa
  def initialize
    @count = 0
  end

  def fits?
    @count < 3 ? true : false
  end

  def eats_cookies
    @count += 1
  end
end