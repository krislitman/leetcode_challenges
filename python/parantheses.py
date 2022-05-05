# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
import pdb
class Solution(object):
    def isValid(self, the_string):
        p = {')':'(', ']':'[', '}':'{'}
        b = True
        f = []
        for char in the_string:
            if char == list(p.keys())[0] or char == list(p.keys())[1] or char == list(p.keys())[2]:
                f.append(char)
            else:
                if len(f) == 0:
                    b = False
                    break
                elif p[char] and p[char] == f[-1]:
                    f.pop()
                else:
                    f.append(char)
                    b = False
        if len(f) == 0 and b == True:
            print("True")
        else:
            print("False")



solution = Solution()
print(solution.isValid("()"))
# true

# attempt2 = solution.isValid("()[]{}")
# # true

# attempt3 = solution.isValid("(]")
# # false

# attempt5 = solution.isValid("{[]}")
# true

# print(attempt2)
# print(attempt3)
# print(attempt5)
