class RollCall
  def initialize
    @names = []
  end

  def longest_name
    if @names.length == 0
      return nil
    else
      @names.sort_by { |x| x.length }.last
    end
  end

  def <<(name)
    @names << name
  end
end