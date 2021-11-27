# Given an integer array nums, return all the different possible increasing subsequences of the given array with at least two elements. You may return the answer in any order.
#
# The given array may contain duplicates, and two equal integers should also be considered a special case of increasing sequence.
#
#
#
# Example 1:
#
# Input: nums = [4,6,7,7]
# Output: [[4,6],[4,6,7],[4,6,7,7],[4,7],[4,7,7],[6,7],[6,7,7],[7,7]]
# Example 2:
#
# Input: nums = [4,4,3,2,1]
# Output: [[4,4]]


@c = 0
@result = []
@l = nil

def find_subsequences(nums)
  s = []
  require 'pry'; binding.pry
  return @result if nums.length == 0
  return [nums] if @result.empty? && nums.length == 1

  @c = @c + 1
  nums.each do |n|
    s << n
    if n < nums[@c]
      next
    elsif n > nums[@c]
      s << nums[@c]
      find_subsequences(nums)
    end
  end
end

nums3 = [4]
puts find_subsequences(nums3)

# nums1 = [4,6,7,7]
# attempt1 = find_subsequences(nums1) # expected => [[4,6],[4,6,7],[4,6,7,7],[4,7],[4,7,7],[6,7],[6,7,7],[7,7]]
# puts attempt1

# nums2 = [4,4,3,2,1]
# attempt2 = find_subsequences(nums2) # expected => [[4,4]]
