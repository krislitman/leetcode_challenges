# def contains_duplicate(nums)
#   one = nums.length
#   two = nums.uniq.length
#   return false if one == two
#   true
# end

def contains_duplicate(nums)
    l = nums.length
    clone = nums.dup
    result = clone & nums
    result.length != l  ? true : false
end

p contains_duplicate([1,2,3,1])
p contains_duplicate([1,2,3,4])
p contains_duplicate([1,1,1,3,3,4,3,2,4,2])
