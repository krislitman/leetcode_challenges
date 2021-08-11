# Given a string s, find the longest palindromic subsequence's length in s.

# A subsequence is a sequence that can be derived from another sequence by deleting some or no elements without changing the order of the remaining elements.



# Example 1:

# Input: s = "bbbab"
# Output: 4
# Explanation: One possible longest palindromic subsequence is "bbbb".
# Example 2:

# Input: s = "cbbd"
# Output: 2
# Explanation: One possible longest palindromic subsequence is "bb".

# Psuedocode: Going to split the string into individual elements in an array. Then I will iterate over the array,
# and create hash objects for each distinct element. If there is more than one element, increment by one to that keys
# value. Then I will return the max value from the hash object

def longest_palindrome_subseq(s)
  find_all_palindromes = []
  l = (s.length - 1)
  c = 0
  if s == s.reverse
    return s.length
  else
    until l == 0 do
      a = s.chars
      a.delete_at(c)
      if a == a.reverse
        find_all_palindromes.append([a])
        next
      else
        c += 1
        l -= 1
      end
      require 'pry'; binding.pry
    end
  end
  # if (s == s.reverse)
  #   return s.length
  # else
  #   split_up = s.split('')
  #   count_em = split_up.reduce({}) do |acc, e|
  #     if acc[e]
  #       acc[e] += 1
  #     else
  #       acc[e] = 1
  #     end
  #     acc
  #   end
  #   count_em.values.max
  # end
end

attempt1 = longest_palindrome_subseq('bbbab')
print(attempt1)
# expect: 4

# attempt2 = longest_palindrome_subseq('cbbd')
# print(attempt2)
# # expect: 2

# attempt3 = longest_palindrome_subseq('aabaa')
# print(attempt3)
# expect: 5
