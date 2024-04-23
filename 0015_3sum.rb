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
    remaining_nums = nums.map(&:clone)
    remaining_nums.delete_at(i)
    l = 0
    r = remaining_nums.length - 1

    while l < r
      y = remaining_nums[l]
      z = remaining_nums[r]
      sum = x + y + z
      array = [x, y, z].sort!

      result << array if sum == 0 && !result.include?(array)

      sum > 0 ? r -= 1 : l += 1
    end
  end

  result
end

p three_sum([-1, 0, 1, 2, -1, -4]) # [[-1,-1,2],[-1,0,1]]
p three_sum([0, 1, 1]) # []
p three_sum([0, 0, 0]) # [[0,0,0]]
p three_sum([-1, 0, 1]) # [[-1,0,1]]

# Valid but times out on LeetCode
