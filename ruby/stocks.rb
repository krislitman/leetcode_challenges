# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 

# Example 1:

# Input: prices = [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
# Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
# Example 2:

# Input: prices = [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transactions are done and the max profit = 0.

def max_profit(prices)
  f = 0
  l = prices.length
  new_array = Array.new
  prices.each do |price|
    n = price[f + 1] - price
    if n > 0
      new_array.push(n)
    else
      next
    end
    new_array
  end
  require 'pry'; binding.pry
  return 0 if new_array.empty?
end

p max_profit([7,6,4,3,1])
p max_profit([7,1,5,3,6,4])


