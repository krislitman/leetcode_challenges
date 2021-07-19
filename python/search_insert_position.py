# Given a sorted array of distinct integers and a target value,
# return the index if the target is found.
# If not, return the index where it would be if it were inserted in order.

class Solution:
    def searchInsert(self, nums, target):
        if target in nums:
            return nums.index(target)
        else:
            for i in nums:
                if target < i and len(nums) == 1:
                    return 0
                elif target < 1:
                    return 0
                elif target > max(nums):
                    largest_num = max(nums)
                    return nums.index(largest_num) + 1
                elif target == i - 1:
                    return nums.index(i)
                elif target == i + 1:
                    new_index = nums.index(i) + 1
                    return new_index
                elif target < min(nums):
                    return 0


solution = Solution()

attempt = solution.searchInsert([1], 0)
# 0
attempt2 = solution.searchInsert([1, 3, 5, 6], 0)
# 0
attempt3 = solution.searchInsert([1, 3, 5, 6], 7)
# 4
attempt4 = solution.searchInsert([5, 6, 8, 10], 1)
# 1
attempt5 = solution.searchInsert([1, 3, 5, 6], 5)
# 2
attempt6 = solution.searchInsert([1, 3, 5, 6], 2)
# 1

print(attempt)
print(attempt2)
print(attempt3)
print(attempt4)
print(attempt5)
print(attempt6)
