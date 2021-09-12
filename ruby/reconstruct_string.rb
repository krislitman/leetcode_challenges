# Given a string s containing an out-of-order English representation of digits 0-9, return the digits in ascending order.

# Example 1:

# Input: s = "owoztneoer"
# Output: "012"
# Example 2:

# Input: s = "fviefuro"
# Output: "45"

# I want to iterate over each element of the string, and see if that element matches any value of my hash table
# which will be a key of the int 0-9 with the value of the string representation. If the value includes the
# element, then put it in a temporary array. If the next value matches the same hash element, then add to the array.
# After iterating, check that the values in the array match the value of the hash key and return the integer.

def original_digits(s)
  zero_to_nine = {
    "0": "zero",
    "1": "one",
    "2": "two",
    "3": "three",
    "4": "four",
    "5": "five",
    "6": "six",
    "7": "seven",
    "8": "eight",
    "9": "nine"
  }
  found = []
  zero_to_nine.each do |key,value|
    l = value.split('').length
    c = 0
    value.split('').each do |e|
      if s.split('').include? e
        c += 1
        if c == l
          c = 0
          found << key.to_s
          break
        end
      else
        break
      end
    end
  end
  return found.join('')
end

attempt1 = original_digits("owoztneoer")
puts attempt1
# expecting 012

attempt2 = original_digits("fviefuro")
puts attempt2
# expecting 45
