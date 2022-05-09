def test_method(arr)
    a = []
    b = []
    arr.each_with_index do |e, i|
        if arr[i + 1] && i < arr[i + 1] && a.length < 2
            a << e
        else
            b << e
        end
    end
    if a.sum < b.sum
        temp_one = a[0]
        temp_two = b[0]
        a[0], b[0] = temp_two, temp_one
    end
    return a
end

print(test_method([3,7,5,6,2]))
# [5,7]

# def minimalHeaviestSetA(arr)
    # divide into two sets
    # the intersection of values should be null
    # union of a and b is equal to array sum
    # number of elements in a should be less than b
    # sum of a is greater than b set
    # return set a in asc order

#     a = []
#     b = []
#     t = arr.sum
# end
