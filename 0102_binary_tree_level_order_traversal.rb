# 102. Binary Tree Level Order Traversal
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
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?

  queue = [root]
  result = []

  until queue.empty?
    level = []
    queue.length.times do
      node = queue.shift
      if node
        level << node.val
        queue << node.left if node.left
        queue << node.right if node.right
      end
    end
    result << level if level
  end

  result
end
