# 206. Reverse Linked List
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
# @return {ListNode}
def reverse_list(head)
  prev = nil
  curr = head

  while curr
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end

  prev
end