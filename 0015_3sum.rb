# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  if nums.length == 3
    return [nums] if nums.sum == 0

    return []
  end

  result = []
  nums.sort!

  nums.each_with_index do |x, i|
    next if i > 0 && x == nums[i - 1]
    
    l = i + 1
    r = nums.length - 1

    while l < r
      y = nums[l]
      z = nums[r]
      sum = x + y + z

      if sum > 0
        r -= 1
      elsif sum <0
        l += 1
      else
        result << [x, y, z]
        l += 1
        l += 1 while nums[l] == nums[l - 1]
      end
    end
  end
  result
end

p three_sum([-1, 0, 1, 2, -1, -4]) # [[-1,-1,2],[-1,0,1]]
p three_sum([0, 1, 1]) # []
p three_sum([0, 0, 0]) # [[0,0,0]]
p three_sum([-1, 0, 1]) # [[-1,0,1]]
