class Solution(object):
    def searchRange(self, nums, target):
        found = []
        if target in nums:
            for num in nums:
                if num == target:
                    found.append(nums.index(target))
                    string_it = str(nums.index(target))
                    found_index = nums.index(target)
                    nums[found_index] = string_it
                else:
                    pass
            if len(found) > 1:
                return found
            else:
                found.append(found[0])
                return found
        else:
            return [-1, -1]

# Given an array of integers nums sorted in ascending order,
# find the starting and ending position of a given target value.
# If target is not found in the array, return [-1, -1].
# You must write an algorithm with O(log n) runtime complexity.

# Example 1: X

# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]

# Example 2:

# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
# Example 3:

# Input: nums = [], target = 0
# Output: [-1,-1]


solution = Solution()
print(solution.searchRange([5, 7, 7, 8, 8, 10], 8))
print(solution.searchRange([5, 7, 7, 8, 8, 10], 6))
print(solution.searchRange([1], 1))
