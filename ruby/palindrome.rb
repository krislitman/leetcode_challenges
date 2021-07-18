def is_palindrome(s)
  s = s.gsub(/[^A-Za-z0-9 ]/, '')
  forwards = s.downcase.delete(" ").split("")
  backwards = forwards.reverse
  return true if backwards == forwards
  false
end

print is_palindrome("A man, a plan, a canal: Panama")