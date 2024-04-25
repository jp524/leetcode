# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = 0
  l = 0
  r = height.length - 1
  
  while l < r
    l_height = height[l]
    r_height = height[r]

    x_axis = r - l
    y_axis = [l_height, r_height].min
    max_area = [max_area, x_axis * y_axis].max

    l_height < r_height ? l += 1 : r -= 1
  end

  max_area
end

p max_area([1,8,6,2,5,4,8,3,7]) # 49
p max_area([1,1]) # 1
