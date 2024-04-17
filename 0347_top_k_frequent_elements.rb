# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  nums_tally = nums.tally

  result_array = nums_tally.sort_by { |k, v| -v }[0, k]
  result = []
  result_array.each do |array|
    result << array[0]
  end

  result
end

p top_k_frequent([1,1,1,2,2,3], 2) # [1, 2]
p top_k_frequent([1], 1) # [1]
