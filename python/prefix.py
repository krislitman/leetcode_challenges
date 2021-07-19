# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".


# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

class Solution(object):
    def longestCommonPrefix(self, strs):
        longest = []
        iterations = len(strs) - 1
        longest = len(max(strs)) - 1
        for str in strs:
            for i in range(longest):
                
                    
                    import pdb
                    pdb.set_trace()

solution = Solution()
at1 = solution.longestCommonPrefix(["flower", "flow", "flight"])
print(at1)
