# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  return [0, 1] if nums.count == 2

  nums_hash = {}
  nums.each_with_index do |n, i|
    m_target = target - n

    if j = nums_hash[m_target]
      return [i, j]
    else
      nums_hash[n] = i
    end
  end
end

p two_sum([2, 7, 11, 15], 9) # [0, 1]
p two_sum([3, 2, 4], 6) # [1, 2]
p two_sum([3, 3], 6) # [0, 1]
p two_sum([3, 2, 3], 6) # [0, 2]
