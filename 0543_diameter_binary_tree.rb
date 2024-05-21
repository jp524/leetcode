# 543. Diameter of Binary Tree
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
def diameter_of_binary_tree(root)
  max_diameter = 0
  stack = [root]
  
  until stack.empty?
    node = stack.pop
    stack << node.left if node.left
    stack << node.right if node.right

    left = max_depth(node.left)
    right = max_depth(node.right)
    max_diameter = [max_diameter, left + right].max
  end

  max_diameter
end

def max_depth(root)
  return 0 if root.nil?

  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  1 + [left_depth, right_depth].max
end

# Valid solution but times out