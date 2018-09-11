class Cart

  PRICE = 100

  def add(items)
    @ordered_items = items.map{ |key,value| value }
  end

  def calculate
    total = 0
    for item in @ordered_items do
      total = total + item * PRICE
    end
    return total
  end
end
