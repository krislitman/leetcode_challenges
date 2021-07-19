# TODO Given the head of a singly linked list,
# TODO reverse the list, and return the reversed list.

# Input: head = [1,2,3,4,5]
# Output: [5,4,3,2,1]

# Input: head = [1,2]
# Output: [2,1]

# Input: head = []
# Output: []

# If there is no head, return empty list
# Reverse iterate over list, take element
# And place into a new list to return

import pdb


class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution(object):
    def reverseList(self, head):
        c = head
        prev = None
        while c != None:
            t = c.next
            c.next = prev
            prev = c
            c = t
        return prev


solution = Solution()
attempt1 = solution.reverseList([1, 2, 3, 4, 5])
print(attempt1)
# expect: [5,4,3,2,1]

attempt2 = solution.reverseList([1, 2])
print(attempt2)
# expect: [2,1]

attempt3 = solution.reverseList([])
print(attempt3)
# expect: []
