# An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.

# Given an integer n, return true if n is an ugly number.



# Example 1:

# Input: n = 6
# Output: true
# Explanation: 6 = 2 × 3
# Example 2:

# Input: n = 8
# Output: true
# Explanation: 8 = 2 × 2 × 2
# Example 3:

# Input: n = 14
# Output: false
# Explanation: 14 is not ugly since it includes the prime factor 7.
# Example 4:

# Input: n = 1
# Output: true
# Explanation: 1 has no prime factors, therefore all of its prime factors are limited to 2, 3, and 5.

def is_ugly(n)
  prime_factors = [1,2,3,5]
  if n == 1
    return true
  elsif n > 1
    prime_factors.include?(n/2) || prime_factors.include?(n/3) ? true : false
  else
    return false
  end
end

attempt1 = is_ugly(6)
attempt2 = is_ugly(8)
attempt3 = is_ugly(14)
attempt4 = is_ugly(1)

print(attempt1)
print(attempt2)
print(attempt3)
print(attempt4)
