# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  previous = []
  following = nums[1..]
  result = []

  nums.each do |n|
    prev_product = get_product(previous)
    foll_product = get_product(following)

    result << prev_product * foll_product
    previous.push(n)
    following.shift
  end
  
  result
end

def get_product(array)
  product = array.reduce(:*)
  product ||= 1
  product
end

p product_except_self([1,2,3,4]) # [24,12,8,6]
p product_except_self([-1,1,0,-3,3]) # [0,0,9,0,0]
p product_except_self([0,0]) # [0,0]
p product_except_self([0,4,0]) #[0,0,0]

# Valid solution but times out on LeetCode