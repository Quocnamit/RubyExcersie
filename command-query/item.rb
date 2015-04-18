class Item
  attr_accessor :name, :price, :discount

  def initialize(name,obj)
    @name = name
    obj.each { |key, value| send("#{key}=", value) }
  end
end