# Given a string s, reverse only all the vowels in the string and return it.

# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.

# Example 1:

# Input: s = "hello"
# Output: "holle"
# Example 2:

# Input: s = "leetcode"
# Output: "leotcede"

def reverse_vowels(s)
  vowels = [
    'a', 'e', 'i', 'o', 'u',
  ]
  split_up = s.split('')
  gathered = split_up.find_all {|w| w if vowels.include? w}
  to_replace = gathered.reverse
  count = 0
  split_up.map do |w|
    if vowels.include? w
      w = to_replace[count]
      count += 1
      w
    else
      w
    end
  end
end

attempt1 = reverse_vowels('hello')
print(attempt1)
# expect: 'holle'
