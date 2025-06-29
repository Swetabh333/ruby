def stock_picker(stock_prices)
  max_diff = 0
  res = Array.new(2)
  for i in 0...stock_prices.length do
    for j in i...stock_prices.length do
      if stock_prices[j] - stock_prices[i] > max_diff
        max_diff = stock_prices[j] - stock_prices[i] 
        res[0] = i 
        res[1] = j
      end
    end
  end
  res
end


puts stock_picker([17,3,6,9,15,8,6,1,10])