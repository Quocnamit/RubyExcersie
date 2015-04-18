class Catalogue
  def initialize
    @catalogue = []
  end

  def cheapest
    if @catalogue.length == 0
      return nil
    end
      return @catalogue.sort_by {|product|
        product.price
      }.first[:name]
  end

  def <<(product)
    @catalogue << product
  end
end
