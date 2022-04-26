def miniMaxSum(arr)
    h = {}
    c = 0
    5.times do
        t = arr.dup
        t.delete_at(c)
        h2 = {
            "#{c}" => t.sum
        }
        h = h.merge(h2)
        t.clear
        c += 1
    end
    [h.values.min, h.values.max]
end

a = miniMaxSum([1,2,3,4,5])
puts a

# [16, 24]
