# @param {Integer[]} height
# @return {Integer}
def trap(height)
  water = 0
  current_trap = 0
  l = 0
  r = height.length - 1

  while l < r
    l_trap = height[l]
    r_trap = height[r]
    current_trap = [[l_trap, r_trap].min, current_trap].max

    water += current_trap - l_trap if l_trap < current_trap
    water += current_trap - r_trap if r_trap < current_trap

    l_trap > r_trap ? r -= 1 : l += 1
  end

  water
end

p trap([0,1,0,2,1,0,1,3,2,1,2,1]) #6
p trap([4,2,0,3,2,5]) # 9
