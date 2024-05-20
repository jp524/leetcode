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
  depth_max = 0
  stack = [[root, 1]]

  until stack.empty?
    node, depth = stack.pop
    if node
      depth_max = [depth_max, depth].max
      stack << [node.left, depth + 1] if node.left
      stack << [node.right, depth + 1] if node.right
    end
  end

  depth_max
end
