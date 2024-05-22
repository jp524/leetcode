# 100. Same Tree
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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  queue_p = [p]
  queue_q = [q]

  until queue_p.empty? || queue_q.empty?
    node_p = queue_p.pop
    node_q = queue_q.pop

    next if node_p.nil? && node_q.nil?

    return false if node_p.nil? || node_q.nil?

    return false if node_p.val != node_q.val

    queue_p << node_p.left
    queue_p << node_p.right
    queue_q << node_q.left
    queue_q << node_q.right
  end

  queue_p == queue_q
end
