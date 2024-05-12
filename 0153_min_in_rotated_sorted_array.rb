# 153. Find Minimum in Rotated Sorted Array
# Binary Search

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  l = 0
  r = nums.length - 1

  while l <= r
    m = (l + r) / 2

    return nums[l] if l == r

    if nums[m] > nums[r]
      l = m + 1
    else
      r = m
    end
  end
end

p find_min([3,4,5,1,2]) # 1
p find_min([4,5,6,7,0,1,2]) # 0
p find_min([11,13,15,17]) # 11
p find_min([2,1]) # 1
