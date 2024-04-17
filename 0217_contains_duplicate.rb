# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums_tally = nums.tally
  return false if nums_tally.values.all? { |occ| occ == 1 }

  true
end

p contains_duplicate([1, 2, 3, 1]) # true
p contains_duplicate([1, 2, 3, 4]) # false
p contains_duplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]) # true
