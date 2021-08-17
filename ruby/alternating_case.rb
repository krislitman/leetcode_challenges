# altERnaTIng cAsE <=> ALTerNAtiNG CaSe
# Define String.prototype.toAlternatingCase (or a similar function/method such as to_alternating_case/toAlternatingCase/ToAlternatingCase in your selected language; see the initial solution for details) such that each lowercase letter becomes uppercase and each uppercase letter becomes lowercase. For example:

# "hello world".to_alternating_case() === "HELLO WORLD"
# "HELLO WORLD".to_alternating_case() === "hello world"
# "hello WORLD".to_alternating_case() === "HELLO world"
# "HeLLo WoRLD".to_alternating_case() === "hEllO wOrld"
# "12345".to_alternating_case() === "12345" // Non-alphabetical characters are unaffected
# "1a2b3c4d5e".to_alternating_case() === "1A2B3C4D5E"
# "String.prototype.toAlternatingCase".to_alternating_case() === "sTRING.PROTOTYPE.TOaLTERNATINGcASE"
# As usual, your function/method should be pure, i.e. it should not mutate the original string.

def to_alternating_case(str)
  if ![str].grep(/[^a-zA-Z]/)
    return str
  else
    str.chars.map do |c|
      n = c.downcase
      if c == n
        c.upcase
      else
        c.downcase
      end
    end.join('')
  end
end

attempt1 = to_alternating_case('hello world')
print(attempt1)

attempt2 = to_alternating_case('HELLO WORLD')
print(attempt2)

attempt3 = to_alternating_case('hello WORLD')
print(attempt3)

attempt4 = to_alternating_case('HELLO world')
print(attempt4)

attempt5 = to_alternating_case('12345')
print(attempt5)

attempt6 = to_alternating_case('1a2b3c4d5e')
print(attempt6)
