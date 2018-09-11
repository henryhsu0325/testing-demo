class Cart

  PRICE = 100

  def add(items)
    @ordered_items = items.map{ |key,value| value }.delete_if{ |i| i == 0 } #將資料轉換為陣列，刪除沒有買的集數
  end

  def calculate
    total = 0

    while @ordered_items.size > 0 # 當客戶還有書籍尚未結帳時
      if @ordered_items.size == 2
        total = total + 2 * PRICE * 0.95 # 客戶買了一組(二本）)
      elsif @ordered_items.size == 3
        total = total + 3 * PRICE * 0.9 # 客戶買了一組(三本)
      elsif @ordered_items.size == 4
        total = total + 4 * PRICE * 0.85 # 客戶買了一組(四本)
      elsif @ordered_items.size == 5
        total = total + 5 * PRICE * 0.8 # 客戶買了一組(五本)
      else
        total = total + PRICE # 客戶單買了一本
      end
      @ordered_items = @ordered_items.map{ |i| i -= 1 } # 刪除已計算過的書籍
      @ordered_items = @ordered_items.delete_if{ |i| i == 0 } # 把已經結完的集數刪除
    end

    return total
  end

end