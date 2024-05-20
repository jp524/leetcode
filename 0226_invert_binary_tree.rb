# 226. Invert Binary Tree
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
# @return {TreeNode}
def invert_tree(root)
  return nil if root.nil?

  # Swap children
  old_left = root.left
  root.left = root.right
  root.right = old_left

  # Invert subtrees
  invert_tree(root.left)
  invert_tree(root.right)

  root
end
