# @param {Integer[]} height
# @return {Integer}
def trap(height)
  water = 0
  l = 0
  r = height.length - 1
  l_trap = height.first
  r_trap = height.last

  while l < r
    if l_trap > r_trap # Only need to compare to one side
      r -= 1
      add_water = r_trap - height[r]
      r_trap = [height[r], r_trap].max
    else
      l += 1
      add_water = l_trap - height[l]
      l_trap = [height[l], l_trap].max
    end
    water += add_water if add_water.positive?
  end

  water
end

p trap([0,1,0,2,1,0,1,3,2,1,2,1]) #6
p trap([4,2,0,3,2,5]) # 9
