# 19. Remove Nth Node From End of List
# Linked List
# Two Pointers

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  # Use dummy node in case the node to be removed is the first from the list
  dummy = ListNode.new(0, head)

  before_node_to_delete = dummy
  end_of_list = head
  n.times do
    end_of_list = end_of_list.next
  end

  while end_of_list
    before_node_to_delete = before_node_to_delete.next
    end_of_list = end_of_list.next
  end
  before_node_to_delete.next = before_node_to_delete.next.next

  dummy.next
end