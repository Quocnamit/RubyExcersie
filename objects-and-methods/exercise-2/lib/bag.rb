class Bag
  def initialize
    @candies = []
  end

  def empty?
    @candies.count == 0
  end

  def count
    @candies.count
  end

  def candies
    @candies
  end

  def <<(candy)
    @candies << candy
  end

  def contains? (type)
    isContains = false
    @candies.each do |candy|
        if candy.type == type
            isContains = true
            break
        end
    end
    return isContains
  end

  def grab(type)
     @candies.each do |candy|
            if candy.type == type
                @candies.delete(candy)
                return candy
                break
            end
        end
  end

  def take(number)
    candies_taken = @candies.take(number)
    candies_taken.each do |candy|
       @candies.delete_at(@candies.index(candy))
    end
    return candies_taken
  end
end
