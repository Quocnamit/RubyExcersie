class Hobbit

  attr_reader :age, :name, :disposition

  def initialize(name, disposition="homebody", age=0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def adult?
    @age > 32 ? true : false
  end
end