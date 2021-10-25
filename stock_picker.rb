# frozen_string_literal: true

def stock_picker(prices)
  profits = []
  best_operation = []
  prices.each.with_index do |price, i|
    prices.last(prices.length - i).each.with_index do |_i_, j|
      profits << prices.last(prices.length - i)[j] - price if j < (prices.length)
    end
  end
  prices.each.with_index do |price, i|
    prices.last(prices.length - i).each.with_index do |_i_, j|
      if prices.last(prices.length - i)[j] - price == profits.max
        best_operation << i
        best_operation << prices.index(prices.last(prices.length - i)[j])
      end
    end
  end
  best_operation
end
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
print stock_picker(prices)
