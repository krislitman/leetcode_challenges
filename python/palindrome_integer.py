class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        list2 = []
        new = list(map(int, str(x)))
        counter2 = len(new) - 1
        for i in range(len(new)):
            if i == len(new) - 1:
                break
            else:
                new[i] = new[counter2]
                counter2 +=1
                
        change = map(str,new)
        stuff = "".join(change)
        num = int(stuff)
        return num == x

solution = Solution()
attempt1 = solution.isPalindrome(121)

print(attempt1)
# ? Should be True
