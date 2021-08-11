# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# You must implement a solution with a linear runtime complexity and use only constant extra space.



# Example 1:

# Input: nums = [2,2,1]
# Output: 1
# Example 2:

# Input: nums = [4,1,2,1,2]
# Output: 4
# Example 3:

# Input: nums = [1]
# Output: 1
import pdb

class Solution(object):
    def singleNumber(self, nums):
        duplicates = []
        l = len(nums)
        while l != 0:
            n = nums[0]
            nums.pop(0)
            if n in nums or n in duplicates:
                duplicates.append(n)
                l -= 1
            else:
                return n

solution = Solution()
attempt1 = solution.singleNumber([2,2,1])
print(attempt1)

solution = Solution()
attempt2 = solution.singleNumber([1,0,1])
print(attempt2)

