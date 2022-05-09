def test_two(arr, start, finish)
    s = start[0]..finish[0]
    f = start[1]..finish[1]
    answer = []
    to_add = 0
    op = false
    arr.split("").each do |a|
        if a == "|" && op == false
            op = true
        elsif a == "|" && op == true
            op = false
        elsif a == "*" && op == true
            to_add += 1
        end
    end
    answer << to_add

    to_add = 0
    op = false
    arr.split("").each do |a|
        if a == "|" && op == false
            op = true
        elsif a == "|" && op == true
            op = false
        elsif a == "*" && op == true
            to_add += 1
        end
    end
    answer << to_add
end

print(test_two("|**|*", [1,1], [1,5]))
# 2
