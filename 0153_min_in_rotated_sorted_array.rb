# 153. Find Minimum in Rotated Sorted Array
# Binary Search

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  result = nums[0]
  l = 0
  r = nums.length - 1

  while l <= r
    result = [result, nums[l]].min if nums[l] < nums[r]
  
    m = (l + r) / 2
    result = [result, nums[m]].min

    if nums[m] >= nums[l]
      l = m + 1
    else
      r = m - 1
    end
  end
  result
end

p find_min([3,4,5,1,2]) # 1
p find_min([4,5,6,7,0,1,2]) # 0
p find_min([11,13,15,17]) # 11
p find_min([2,1]) # 1
