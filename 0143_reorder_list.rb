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

  l = list_length(head) 
  list1, list2 = split_list(head, l)
  list2 = reverse_list(list2)
  merge_two_lists(list1, list2) 
end

def list_length(head)
  l = 0
  curr = head
  while curr
    curr = curr.next
    l += 1
  end
  l
end

def split_list(head, l)
  i = 0
  limit = l / 2
  prev = nil
  curr = head
  while i < limit
    prev = curr
    curr = curr.next
    i += 1
  end

  prev.next = nil # Modify last node of original linked list
  [head, curr]
end

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

def merge_two_lists(list1, list2)
  dummy = ListNode.new
  head = dummy

  while list1 && list2
    dummy.next = list1
    list1 = list1.next
    dummy = dummy.next

    dummy.next = list2
    list2 = list2.next
    dummy = dummy.next
  end

  if list1
    dummy.next = list1
  elsif list2
    dummy.next = list2
  end

  head.next
end
