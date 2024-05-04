# 74. Search a 2D Matrix
# Binary Search

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  nums = matrix.flatten
  l = 0
  r = nums.length - 1

  while l <= r
    middle_index = l + (r - l) / 2
    middle = nums[middle_index]

    return true if target == middle

    if target < middle
      r = middle_index - 1
    else
      l = middle_index + 1
    end
  end

  false
end

p search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3) # true
p search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13) # false
