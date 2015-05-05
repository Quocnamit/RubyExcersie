class TrickOrTreater
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def has_candy?
    @bag.count > 0
  end

  def candy_count
    @bag.count
  end

  def eat
    if @bag.count > 0
      @bag.pop
    end
  end
end
