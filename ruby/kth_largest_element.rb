# Given an integer array nums and an integer k, return the kth largest element in the array.

# Note that it is the kth largest element in the sorted order, not the kth distinct element.



# Example 1:

# Input: nums = [3,2,1,5,6,4], k = 2
# Output: 5
# Example 2:

# Input: nums = [3,2,3,1,2,4,5,5,6], k = 4
# Output: 4

# Going to try to sort the array, and then
# give each element a key, put the element
# and key into a hash object. then can
# access the kth element via the key

def find_kth_largest(nums, k)
  sorted = nums.sort_by{|n| n }.reverse
  k -= 1
  until k == 0 do
    sorted.shift
    k -= 1
  end
  return sorted[0]
end

attempt1 = find_kth_largest([3,2,1,5,6,4], 2)
print(attempt1)
# expect 5

attempt2 = find_kth_largest([3,2,3,1,2,4,5,5,6], 4)
print(attempt2)
# expect 4
