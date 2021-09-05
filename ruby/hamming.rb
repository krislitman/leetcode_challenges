# The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
# Given an integer array nums, return the sum of Hamming distances between all the pairs of the integers in nums
# Example 1:
# Input: nums = [4,14,2]
# Output: 6
# Explanation: In binary representation, the 4 is 0100, 14 is 1110, and 2 is 0010 (just
# showing the four bits relevant in this case).
# The answer will be:
# HammingDistance(4, 14) + HammingDistance(4, 2) + HammingDistance(14, 2) = 2 + 2 + 2 = 6.
# Example 2:
# Input: nums = [4,14,4]
# Output: 4

def total_hamming_distance(nums)
  converted_nums = nums.map{|n| ("%04b" % n).split('')}
  total = 0
  i = 0
  converted_nums.each do |num|
    if i == 0
      diff = num & converted_nums[-1]
      total += diff.length
      diff.clear
      i += 1
    elsif i >= 1
      diff = num & converted_nums[i-1]
      total += diff.length
      diff.clear
      i += 1
    end
  end
  return total
end

attempt1 = total_hamming_distance([4,14,2])
puts attempt1
# expect: 6
