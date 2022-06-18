# Two friends like to pool their money and go to the ice cream parlor. They always choose two distinct flavors and they spend all of their money.

# Given a list of prices for the flavors of ice cream, select the two that will cost all of the money they have.

# Example.

# The two flavors that cost  and  meet the criteria. Using -based indexing, they are at indices  and .

# Function Description

# Complete the icecreamParlor function in the editor below.

# icecreamParlor has the following parameter(s):

# int m: the amount of money they have to spend
# int cost[n]: the cost of each flavor of ice cream
# Returns

# int[2]: the indices of the prices of the two flavors they buy, sorted ascending
# Input Format

# The first line contains an integer, , the number of trips to the ice cream parlor. The next  sets of lines each describe a visit.

# Each trip is described as follows:

# The integer , the amount of money they have pooled.
# The integer , the number of flavors offered at the time.
#  space-separated integers denoting the cost of each flavor: .
# Note: The index within the cost array represents the flavor of the ice cream purchased.


def icecreamParlor(m, arr)
    indices = []
    value = nil
    arr.each_with_index do |a, e|
        if indices.empty?
            if a < m
                indices << e + 1
                value = a
            end
        elsif a < m && a + value == m
            indices << e + 1
        end
    end
    indices
end


test_one = icecreamParlor(4, [1, 4, 5, 3, 2])
puts test_one
# expected => [1, 4]

test_two = icecreamParlor(4, [2, 2, 4, 3])
puts test_two
# expected => [1, 2]
