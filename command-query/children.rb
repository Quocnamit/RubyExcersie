class Children
  def initialize
    @children = []
  end

  def eldest
    if @children.length == 0
      return nil
    else
      return @children.sort_by { |child|
        child.age
      }.last
    end
  end

  def <<(child)
    @children << child
  end
end