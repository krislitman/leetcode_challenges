def max_sub_array(nums)
  new_array = nums[0]
  current_sum = 0
  nums.each do |n|
    if current_sum < 0
      current_sum = 0
    end
    current_sum += n
    new_array = [new_array, current_sum].max
  end
  return new_array
end

p(max_sub_array([-2,1,-3,4,-1,2,1,-5,4]))