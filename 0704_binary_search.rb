# 704. Binary Search

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l = 0
  r = nums.length - 1

  while l <= r
    middle_index = l + (r - l) / 2
    middle = nums[middle_index]

    return middle_index if target == middle

    if target < middle
      r = middle_index - 1
    else
      l = middle_index + 1
    end
  end

  -1
end

p search([-1,0,3,5,9,12], 9) # 4
p search([-1,0,3,5,9,12], 2) # -1
p search([5], 5) # 0
