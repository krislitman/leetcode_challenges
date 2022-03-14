# What should we return when needle is an empty string? This is a great question to ask during an interview.

# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    i = haystack.index(needle)
    if i.nil?
        i = -1
    end
    i
end

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
# Example 3:

# Input: haystack = "", needle = ""
# Output: 0

one = str_str("hello", "ll")
puts one

two = str_str("aaaaa", "bba")
puts two

three = str_str("", "")
puts three
