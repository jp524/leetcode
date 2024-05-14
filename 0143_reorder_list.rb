# 143. Reorder List
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
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  return head if head.next.nil?

  # Find middle of list
  slow = head
  fast = head.next
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  list2 = slow.next
  slow.next = nil # End head (for list1)

  # Reverse list2
  prev = nil
  curr = list2
  while curr
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end
  list2 = prev

  # Merge two lists
  list1 = head
  while list2
    temp1 = list1.next
    temp2 = list2.next
    list1.next = list2
    list2.next = temp1
    list1 = temp1
    list2 = temp2
  end
end