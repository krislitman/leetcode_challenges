# You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

# Return true if you can reach the last index, or false otherwise.



# Example 1:

# Input: nums = [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
# Example 2:

# Input: nums = [3,2,1,0,4]
# Output: false
# Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

def can_jump(nums)
  e = (nums.length - 1)
  l = nums.length
  c = 0
  case
  when nums.empty?
    return false
  when !nums.empty?
    until l == 0 do
      n = nums[c]
      if n == e
        return true
      elsif (n == 0) && (c != e) && (l != nums.length)
        return false
      elsif c == e
        return true
      else
        c += n
        l -= 1
      end
    end
  end
end

attempt1 = can_jump([2,3,1,1,4])
print(attempt1)
# expect: true

attempt2 = can_jump([3,2,1,0,4])
print(attempt2)
# expect: false
