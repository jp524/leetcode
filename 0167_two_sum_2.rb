# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  l = 0
  r = numbers.length - 1

  while l < r
    sum = numbers[l] + numbers[r]
    return [l + 1, r + 1] if sum == target

    sum > target ? r -= 1 : l += 1
  end
end

p two_sum([2,7,11,15], 9) # [1,2]
p two_sum([2,3,4], 6) #[1,3]
p two_sum([-1,0], -1) # [1,2]