# John Watson knows of an operation called a right circular rotation on an array of integers. One rotation operation moves the last array element to the first position and shifts all remaining elements right one. To test Sherlock's abilities, Watson provides Sherlock with an array of integers. Sherlock is to perform the rotation operation a number of times then determine the value of the element at a given position.

# For each array, perform a number of right circular rotations and return the values of the elements at the given indices.

# Example



# Here  is the number of rotations on , and  holds the list of indices to report. First we perform the two rotations:

# Now return the values from the zero-based indices  and  as indicated in the  array.


# Function Description

# Complete the circularArrayRotation function in the editor below.

# circularArrayRotation has the following parameter(s):

# int a[n]: the array to rotate
# int k: the rotation count
# int queries[1]: the indices to report
# Returns

# int[q]: the values in the rotated  as requested in
# Input Format

# The first line contains  space-separated integers, , , and , the number of elements in the integer array, the rotation count and the number of queries.
# The second line contains  space-separated integers, where each integer  describes array element  (where ).
# Each of the  subsequent lines contains a single integer, , an index of an element in  to return.

def circularArrayRotation(a, k, queries)
  mutated_array = a.dup
  k.times do
    i = mutated_array.pop
    mutated_array.prepend(i)
  end
  queries.each do |i|
    puts mutated_array[i]
  end
end

attempt1 = circularArrayRotation([1,2,3], 2, [0,1])
print(attempt1)
