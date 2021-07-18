def solution(a, b)
  counter = 0
  first_word = a.split("")
  second_word = b.split("")
  duplicates = a.split("") & b.split("")
  one = first_word.reject do |letter|
    duplicates.include?(letter)
  end
  two = second_word.reject do |letter|
    duplicates.include?(letter)
  end
  if b.split("").uniq != b.split("") && a.split("").uniq != a.split("")
    return counter + one.count + two.count
  elsif b.split("").uniq != b.split("") || a.split("").uniq != a.split("")
    return counter + one.count + two.count + 1
  else
    return 0
  end
end
 
#   a.split("").each do |letter|
#     require 'pry'; binding.pry
#     if !b.include?(letter)
#       counter += 1
#     else
#     end
#   end
#   if a.split("").uniq != a.split("")
#     counter += 1
#   else
#   end
#   b.split("").each do |letter|
#     if !a.include?(letter)
#       counter += 1
#     else
#     end
#   end
#   if b.split("").uniq != b.split("")
#     counter += 1
#   else
#   end
#   return counter
# end

puts solution('lemon', 'melon')