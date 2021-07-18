class Solution(object):
    def mergeTwoLists(self, l1, l2):
        new_list = l1 + l2
        empty_list = []
        position = 0
        l = len(new_list)
        if len(l1) == 0 and len(l2) == 1:
            return l2
        elif len(l1) == 1 and len(l2) == 0:
            return l1
        elif len(l1) == 0 and len(l2) == 0:
            return []
        else:
            n = len(new_list)
            for i in range(n - 1):
                for j in range(n - i - 1):
                    if new_list[j] > new_list[j + 1]:
                        new_list[j], new_list[j +
                                              1] = new_list[j + 1], new_list[j]
            return new_list

            # Merge two sorted linked lists and return it as a sorted list.
            # The list should be made by splicing together the nodes of the first two lists.

            # Input: l1 = [1,2,4], l2 = [1,3,4]
            # Output: [1,1,2,3,4,4]

            # Input: l1 = [], l2 = []
            # Output: []
            # Input: l1 = [], l2 = [0]
            # Output: [0]


solution = Solution()
attempt1 = solution.mergeTwoLists([], [0])
attempt2 = solution.mergeTwoLists([], [])
attempt3 = solution.mergeTwoLists([1, 2, 4], [1, 3, 4])


print(attempt1)
print(attempt2)
print(attempt3)
