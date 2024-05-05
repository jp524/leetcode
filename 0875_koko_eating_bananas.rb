# 875. Koko Eating Bananas
# Binary Search

# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
  l = 1
  r = piles.max
  result = r

  while l <= r
    k = (l + r) / 2

    if eats_everything?(piles, h, k)
      result = [result, k].min
      r = k - 1
    else
      l = k + 1
    end
  end

  result
end

def eats_everything?(piles, h, k)
  h_count = 0

  piles.each do |pile|
    h_count += (pile / k.to_f).ceil

    return false if h_count > h
  end

  return true
end

p min_eating_speed([3,6,7,11], 8) # 4
p min_eating_speed([30,11,23,4,20], 5) # 30
p min_eating_speed([30,11,23,4,20], 6) # 23
p min_eating_speed([312884470], 312884469) # 2
p min_eating_speed([312884470], 968709470) # 1
