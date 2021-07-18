# TODO Create a factorial function
# ? Given a positive integer
# ? 5 * 4 * 3 * 2 * 1 = 120

class Solution():
    def factorial(self, int):
        theList = list(range(1, int + 1))
        l = len(theList) - 1
        f = 0
        while l > 0:
            if f == 0:
                f = theList[l] * theList[l-1]
                l = l - 1
            else:
                f = f * theList[l - 1]
                l = l - 1
        return f


solution = Solution()
attempt1 = solution.factorial(5)
attempt2 = solution.factorial(10)
attempt3 = solution.factorial(2)
print(attempt1)
print(attempt2)
print(attempt3)
