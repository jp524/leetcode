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
  $max_diameter = 0
  dfs(root)

  $max_diameter
end

def dfs(root)
  return 0 if root.nil?

  left = dfs(root.left)
  right = dfs(root.right)

  $max_diameter = [$max_diameter, left + right].max
  1 + [left, right].max
end
