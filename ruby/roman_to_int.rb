# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

def roman_to_int(s)
    hsh = {
        I: 1,
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000
    }

    total = 0

    to_arr = s.split("")

    to_arr.each_with_index do |c, i|
        current_value = hsh[to_arr[i].to_sym]
        if (next_value = to_arr[i + 1])
            next_value = to_arr[i + 1].to_i
        else
            next_value = 0
        end

        if current_value && next_value && current_value < next_value
            total -= current_value
        else
            total += current_value
        end
    end
    total
end

# Example 1:

# print roman_to_int("III")
# Output: 3
# Explanation: III = 3.

# Example 2:

# print roman_to_int("LVIII")
# Output: 58
# Explanation: L = 50, V= 5, III = 3.

# Example 3:

print roman_to_int("MCMXCIV")
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
