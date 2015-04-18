
class Clearance
  def initialize
    @clearances  = []
  end

  def best_deal
    if @clearances.length == 0
      return nil
    else
      return @clearances.sort_by { |item|
        item.discount / (item.discount + item.price)
      }.last.name
    end
  end

  def <<(item)
    @clearances << item
  end
end