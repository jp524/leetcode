# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  return [0, 1] if nums.count == 2

  nums.each_with_index do |n, i|
    m_target = target - n
    nums.each_with_index do |m, j|
      next if j <= i
      return [i, j] if m == m_target
    end
  end

end

p two_sum([2, 7, 11, 15], 9) # [0, 1]
p two_sum([3, 2, 4], 6) # [1, 2]
p two_sum([3, 3], 6) # [0, 1]
p two_sum([3, 2, 3], 6) # [0, 2]

# Valid but times out on LeetCode