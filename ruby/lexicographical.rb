# Lexicographical order is often known as alphabetical order when dealing with strings. A string is greater than another string if it comes later in a lexicographically sorted list.

# Given a word, create a new word by swapping some or all of its characters. This new word must meet two criteria:

# It must be greater than the original word
# It must be the smallest word that meets the first condition
# Example

# The next largest word is .

# Complete the function biggerIsGreater below to create and return the new string meeting the criteria. If it is not possible, return no answer.

# Function Description

# Complete the biggerIsGreater function in the editor below.

# biggerIsGreater has the following parameter(s):

# string w: a word
# Returns
# - string: the smallest lexicographically higher string possible or no answer

# Input Format

# The first line of input contains , the number of test cases.
# Each of the next  lines contains .

def biggerIsGreater(w)
    # going to convert string into int array after converting each string into ord value
    w = w.split("").map{|i| i.ord}
    # reverse iterate, and if the next value is less than current value swap and break
    l = w.length - 1
    c = -1
    while l > 0
        # if the previous value is greater than current, swap and break
        if w[c] > w[c - 1]
            temp_one = w[c]
            temp_two = w[c - 1]
            w[c], w[c - 1] = temp_two, temp_one
            break
        # if the numbers are equal, return the string of no answer
        elsif w[c] == w[c - 1]
            return "no answer"
        end
        l -= 1
    end
    # convert/join each ordinal value in array back to character with chr method and map
    w.map{|i| i.chr}.join("")
end

# print(biggerIsGreater("ab"))
# print(biggerIsGreater("bb"))
# print(biggerIsGreater("hefg"))
# print(biggerIsGreater("dhck"))
# print(biggerIsGreater("dkhc"))

# ba
# no answer
# hegf
# dhkc
# hcdk
