# 74. Search a 2D Matrix
# Binary Search

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  l = 0
  r = matrix.length - 1

  while l <= r
    m = l + (r - l) / 2
    nums = matrix[m]

    if target < nums[0]
      r = m - 1
    elsif target > nums[-1]
      l = m + 1
    else
      return binary_search(nums, target)
    end
  end

  false
end

def binary_search(nums, target)
  l = 0
  r = nums.length - 1

  while l <= r
    m = l + (r - l) / 2
    num = nums[m]
    return true if target == num

    if target < num
      r = m - 1
    else
      l = m + 1
    end
  end

  false
end

p search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3) # true
p search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13) # false
p search_matrix([[1,3]], 3) # true
p search_matrix([[1],[3]], 3) # true
