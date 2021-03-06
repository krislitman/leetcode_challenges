# You are given two strings s and t.

# String t is generated by random shuffling string s and then add one more letter at a random position.

# Return the letter that was added to t.

def find_the_difference(s, t)
  return if s.length == 0 && t.length == 0
  split = t.split("")
  compare = s.split("")
  found = nil
  split.each do |l|
    if !compare.include?(l)
      found = l
    else
      compare.delete(l)
      next
    end
  end
  found
end

attempt1 = find_the_difference("", "")
puts attempt1

attempt2 = find_the_difference("abcd", "abcde")
puts attempt2

attempt3 = find_the_difference("", "y")
puts attempt3

attempt4 = find_the_difference("a", "aa")
puts attempt4

attempt5 = find_the_difference("ae", "aea")
puts attempt5

# Example 1:

# Input: s = "abcd", t = "abcde"
# Output: "e"
# Explanation: 'e' is the letter that was added.
# Example 2:

# Input: s = "", t = "y"
# Output: "y"
# Example 3:

# Input: s = "a", t = "aa"
# Output: "a"
# Example 4:

# Input: s = "ae", t = "aea"
# Output: "a"
