class Cart

  PRICE = 100

  def add(items)
    @ordered_items = items.map{ |key,value| value }
  end

  def calculate
    total = 0
    @ordered_items = @ordered_items.delete_if{ |i| i == 0 }

    if @ordered_items.size == 2 
      total = total + 2 * PRICE * 0.95
    else
      for item in @ordered_items do
        total = total + item * PRICE
      end
    end
    
    return total
  end
end
