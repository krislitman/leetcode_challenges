# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

class Solution(object):
    def isValid(self, the_string):
        right = [")", "]", "}"]
        left = ["(", "[", "{"]
        for char in the_string:
            if char in right:
                found = right.index(char)
                return left[found] in the_string
            elif char in left:
                found = left.index(char)
                flip = right[found]
                new_char = the_string.index(flip)
                import pdb
                pdb.set_trace()
                return right[found] in the_string


solution = Solution()
attempt1 = solution.isValid("()")
# true

attempt2 = solution.isValid("()[]{}")
# true

attempt3 = solution.isValid("(]")
# false

attempt5 = solution.isValid("{[]}")
# true

print(attempt1)
print(attempt2)
print(attempt3)
print(attempt5)
