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
  result = Hash.new { |h, k| h[k] = []}
  current_level = 0

  until queue.empty?
    queue.length.times do
      node = queue.shift
      result[current_level] << node.val
      queue << node.left if node.left
      queue << node.right if node.right
    end
    current_level += 1
  end

  result.values
end
