# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  result = Array.new(nums.length, 1)
  prefix = 1
  postfix = 1

  nums.each_with_index do |n, i|
    result[i] = prefix
    prefix *= n
  end

  (nums.length - 1).downto(0).each do |i|
    result[i] *= postfix
    postfix *= nums[i]
  end

  result
end

p product_except_self([1,2,3,4]) # [24,12,8,6]
p product_except_self([-1,1,0,-3,3]) # [0,0,9,0,0]
p product_except_self([0,0]) # [0,0]
p product_except_self([0,4,0]) #[0,0,0]
