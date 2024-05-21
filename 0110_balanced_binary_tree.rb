# 110. Balanced Binary Tree
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
# @return {Boolean}
def is_balanced(root)
  $balanced = true
  dfs(root)
  $balanced
end

def dfs(root)
  return 0 if root.nil?

  left = dfs(root.left)
  right = dfs(root.right)
  $balanced = false if (left - right).abs > 1

  1 + [left, right].max
end
