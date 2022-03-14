# You are given the heads of two sorted linked lists list1 and list2.

# Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

# Return the head of the merged linked list.

# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]
# Example 2:

# Input: list1 = [], list2 = []
# Output: []
# Example 3:

# Input: list1 = [], list2 = [0]
# Output: [0]

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
# # @return {ListNode}

def merge_two_lists(list1, list2)
  merged = []
  o = list1.length
  t = list2.length
  c = 0
  while o && t > 0 do
    merged << list1[c]
    merged << list2[c]
    c += 1
    o -= 1
    t -= 1
  end
  merged = merged.compact
end

# puts merge_two_lists([1,2,4], [1,3,4])
# expect => [1,1,2,3,4,4]

# puts merge_two_lists([], [])
# expect => []

# puts merge_two_lists([], [0])
# # expect => [0]
