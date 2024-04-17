# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  num_set = Set.new(nums)
  longest = 0

  num_set.each do |n|
    next if num_set.include?(n - 1) # n is not the start of a sequence

    length = 0
    length += 1 while num_set.include?(n + length)
    longest = [length, longest].max
  end
  longest
end

p longest_consecutive([100, 4, 200, 1, 3, 2]) # 4
p longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]) # 9

# Valid but times out on LeetCode