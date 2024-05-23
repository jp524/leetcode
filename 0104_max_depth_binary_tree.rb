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

# Iterative depth-first search 
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

# Iterative breadth-first search
def max_depth(root)
  return 0 if root.nil?

  current_level = 0
  queue = [root]

  until queue.empty?
    queue.length.times do 
      current_node = queue.shift
      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
    end
    current_level += 1
  end

  current_level
end

# Recursive depth-first search
def max_depth(root)
  return 0 if root.nil?

  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  1 + [left_depth, right_depth].max
end
