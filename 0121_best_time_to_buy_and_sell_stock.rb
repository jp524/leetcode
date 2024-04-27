# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  l = 0
  r = 1
  max_profit = 0

  while r < prices.length
    l_price = prices[l]
    r_price = prices[r]
    if l_price < r_price
      max_profit = [max_profit, r_price - l_price].max
    else
      l = r
    end
    r += 1
  end
  max_profit
end

p max_profit([7,1,5,3,6,4]) # 5
p max_profit([7,6,4,3,1]) # 0
p max_profit([1]) # 0
p max_profit([2,1,2,0,1]) # 1
p max_profit([2,1,2,1,0,1,2]) # 2
