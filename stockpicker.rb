def stock_picker(stock_array)
  biggest_price_diff = 0
  buy_price = 0
  sell_price = 0
  stock_array.each_with_index do |previous_stock, outer_index|
    stock_array[outer_index+1, stock_array.size].each_with_index do |next_stock, inner_index|
      if previous_stock < next_stock
        price_difference = (previous_stock - next_stock).abs
        if price_difference > biggest_price_diff
          biggest_price_diff = price_difference
          buy_price = previous_stock
          sell_price = next_stock
        end
      end
    end
  end
  [stock_array.index(buy_price), stock_array.index(sell_price)]
end
