# Give a binary string s, return the number of non-empty substrings that have the same number of 0's and 1's, and all the 0's and all the 1's in these substrings are grouped consecutively.

# Substrings that occur multiple times are counted the number of times they occur.


# Example 1:

# Input: s = "00110011"
# Output: 6
# Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's: "0011", "01", "1100", "10", "0011", and "01".
# Notice that some of these substrings repeat and are counted the number of times they occur.
# Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.
# Example 2:

# Input: s = "10101"
# Output: 4
# Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of consecutive 1's and 0's.

class Solution(object):
    def countBinarySubstrings(self, s):
        if not s:
            return 0
        else:
            i = 0
            l = len(s)
            c = 0
            for i in range(l - 1):
                if s[i] != s[i + 1]:
                    left = i
                    right = i + 1
                    while left >= 0 and right < l and s[left] == s[i] and s[right] == s[i + 1]:
                        c += 1
                        left -= 1
                        right += 1
        return c

solution = Solution()
attempt1 = solution.countBinarySubstrings("10101")
# ! Expecting: 4
print(attempt1)

attempt2 = solution.countBinarySubstrings("00110011")
print(attempt2)


