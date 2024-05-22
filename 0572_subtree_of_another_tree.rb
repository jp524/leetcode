# 572. Subtree of Another Tree
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
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  return true if sub_root.nil?

  return false if root.nil?

  if is_same_tree(root, sub_root)
    true
  else
    is_subtree(root.right, sub_root) || is_subtree(root.left, sub_root)
  end
end

def is_same_tree(p, q)
  return true if p.nil? && q.nil?

  return false if p.nil? || q.nil? || p.val != q.val

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end
