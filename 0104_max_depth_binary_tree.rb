# 104. Maximum Depth of Binary Tree
# Trees

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?

  current_level = 0
  queue = [root]

  until queue.empty?
    queue.length.times do 
      current_node = queue.shift
      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
    end
    current_level += 1
  end

  current_level
end
