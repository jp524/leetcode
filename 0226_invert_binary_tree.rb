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
  return root if root.nil?

  queue = [root]

  until queue.empty?
    current = queue.shift
    old_left = current.left
    current.left = current.right
    current.right = old_left
    queue << current.left if current.left
    queue << current.right if current.right
  end

  root
end
