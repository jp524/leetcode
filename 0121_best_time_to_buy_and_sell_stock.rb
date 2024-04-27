# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  buy = prices.first
  max_profit = 0

  prices.each do |price|
    buy = [buy, price].min
    profit = price - buy
    max_profit = [max_profit, profit].max
  end
  max_profit
end

p max_profit([7,1,5,3,6,4]) # 5
p max_profit([7,6,4,3,1]) # 0
p max_profit([1]) # 0
p max_profit([2,1,2,0,1]) # 1
p max_profit([2,1,2,1,0,1,2]) # 2
