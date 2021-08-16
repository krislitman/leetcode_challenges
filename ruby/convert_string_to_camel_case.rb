# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

#   Examples
#   "the-stealth-warrior" gets converted to "theStealthWarrior"
#   "The_Stealth_Warrior" gets converted to "TheStealthWarrior"

def to_camel_case(str)
  s = str.split(/[^a-zA-Z]/)
  s.each_with_index do |i, e|
    if e == 0
      next
    else
      i[0] = i[0].upcase
    end
  end
  return s.join('')
end

attempt1 = to_camel_case('the-stealth-warrior')
print(attempt1)

attempt2 = to_camel_case('The_Stealth_Warrior')
print(attempt2)
