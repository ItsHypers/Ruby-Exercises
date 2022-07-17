
def stock_picker(prices)
  lowest = prices[0]
  lowest_index = 0
  profit = 0
  result = []

  prices.each_with_index do |price, index|
    if price < lowest
      lowest = price
      lowest_index = index
    end

    if price - lowest > profit
      profit = price - lowest
      result = [lowest_index, index]
    end
  end
  result
end

