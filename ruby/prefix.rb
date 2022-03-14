# @param {String[]} strs
# @return {String}

# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

def longest_common_prefix(strs)
    s = strs.first
    t = []
    prefix = ""
    s.chars.each_with_index do |i,e|
        strs.each do |s|
            if s[e] == i
                t << true
            end
        end
        if t.length == strs.length
            prefix.concat(i)
        else
            break
        end
        t.clear
    end
    prefix
end

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"

one = longest_common_prefix(["flower","flow","flight"])
puts one

# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

two = longest_common_prefix(["dog","racecar","car"])
puts two
