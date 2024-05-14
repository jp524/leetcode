# 19. Remove Nth Node From End of List
# Linked List

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
  dummy = ListNode.new
  dummy.next = head
  node_to_delete = dummy
  end_of_list = dummy
  n.times do
    end_of_list = end_of_list.next
  end

  prev = nil
  while end_of_list
    prev = node_to_delete
    node_to_delete = node_to_delete.next
    end_of_list = end_of_list.next
  end
  prev.next = prev.next.next
  
  dummy.next
end