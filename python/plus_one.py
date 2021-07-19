# Given a non-empty array of decimal digits representing a non-negative integer,
# increment one to the integer.

# The digits are stored such that the most significant digit is at the head of the list,
# and each element in the array contains a single digit.

# You may assume the integer does not contain any leading zero, except the number 0 itself.


class Solution(object):
    def plusOne(self, digits):
        new_list = list(map(lambda x: str(x), digits))
        total_number = "".join(new_list)
        new_total = int(total_number)
        new_total = str(new_total + 1)
        if len(new_total) > 1:
            new_total = list(map(lambda x: x, new_total))
            return new_total
        else:
            return str(new_total).split()


example = Solution()

attempt1 = example.plusOne([0])
# [1]

attempt2 = example.plusOne([4, 3, 2, 1])
# [4, 3, 2, 2]

attempt3 = example.plusOne([1, 2, 3])
# [1, 2, 4]

print(attempt1)
print(attempt2)
print(attempt3)
