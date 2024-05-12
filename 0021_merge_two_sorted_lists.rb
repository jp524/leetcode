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
  curr1 = list1
  curr2 = list2
  result = []
  
  while curr1 && curr2
    if curr1.val <= curr2.val
      result << curr1.val
      curr1 = curr1.next
    else
      result << curr2.val
      curr2 = curr2.next
    end
  end

  while curr1
    result << curr1.val
    curr1 = curr1.next
  end

  while curr2
    result << curr2.val
    curr2 = curr2.next
  end

  result
end

# This returns the merged list values, not the head of the merged linked list