class Solution(object):
    def singleNumber(self, nums):
        h = {}
        for n in nums:
            if h[n]:
                h[n] += 1
            else:
                h[n] = 1
        import pdb; pdb.set_trace()
                
solution = Solution()
attempt1 = solution.singleNumber([4, 2, 2])
print(attempt1)