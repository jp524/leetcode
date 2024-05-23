# 235. Lowest Common Ancestor of a Binary Search Tree
# Trees

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  return if root.nil?

  if p.val < root.val && q.val < root.val
    lowest_common_ancestor(root.left, p, q)
  elsif p.val > root.val && q.val > root.val
    lowest_common_ancestor(root.right, p, q)
  else
    return root
  end
end
