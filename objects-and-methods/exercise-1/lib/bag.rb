
class Bag < Array
  def count
    self.length
  end

  def candies
    self
  end

  def contains? (type)
    @isContains = false
    self.each do |candy|
        if candy.type == type
            @isContains = true
            break
        end
    end
    return @isContains
  end
end