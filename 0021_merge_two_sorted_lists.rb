# 21. Merge Two Sorted Lists
# Linked List

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  dummy = ListNode.new
  head = dummy

  while list1 && list2
    if list1.val <= list2.val
      dummy.next = list1
      list1 = list1.next
    else
      dummy.next = list2
      list2 = list2.next
    end
    dummy = dummy.next
  end

  if list1
    dummy.next = list1
  elsif list2
    dummy.next = list2
  end

  head.next
end
