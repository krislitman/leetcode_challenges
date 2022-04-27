# Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

def find_disappeared_numbers(nums)
    found = []
    l = nums.length
    if !nums.include?(l)
        found << l
    end
    r = (nums.min..nums.max)
    r.each do |i|
        if !nums.include?(i)
            found << i
        end
    end
    found
end


#     Example 1:

print find_disappeared_numbers([4,3,2,7,8,2,3,1])
#     Output: [5,6]
#     Example 2:

print find_disappeared_numbers([1,1])
#     Output: [2]
