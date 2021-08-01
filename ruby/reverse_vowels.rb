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
    'A', 'E', 'I', 'O', 'U',
  ]
  split_up = s.split('')
  gathered = (split_up.find_all {|w| w if vowels.include? w}).reverse
  count = 0
  what = split_up.map do |w|
    if vowels.include? w
      w = gathered[count]
      count += 1
      w
    else
      w
    end
  end
  what.join('')
end

attempt1 = reverse_vowels('hello')
print(attempt1)
# expect: 'holle'

attempt2 = reverse_vowels('leetcode')
print(attempt2)
# expect: 'leotcede'
