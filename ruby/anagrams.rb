# Given an array of strings strs, 
# group the anagrams together. 
# You can return the answer in any order.

# An Anagram is a word or phrase formed 
# by rearranging the letters of a 
# different word or phrase, typically 
# using all the original letters exactly once.

 

# Example 1:
# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

# Input: strs = [""]
# Output: [[""]]

# Input: strs = ["a"]
# Output: [["a"]]


def group_anagrams(strs)
  newArray = Array.new
  subHash = Hash.new
  l = strs.length - 1
  c = 0
  if strs.length == 1
    return newArray.append(strs)
  elsif strs.length == 2
    returnArray = []
    strs.each do |s|
      returnArray.push(s)
    end
    return [returnArray]
  else
    strs.each do |word|
      while c < l do
        one = word.split("")
        two = strs[c].split("")
        expected = one & two
        if word == strs[c]
          break
        elsif subHash.values.flatten.include?(word)
        break
        elsif word.length == expected.length
          if subHash[word].nil?
            subHash[word] = [strs[c]]
          else
            subHash[word] << strs[c]
          end
        else
        end
        c += 1
      end
      c = 0
    end
    subHash.each_key do |k|
      if subHash.values.flatten.include?(k)
        subHash.delete(k)
      else
      end
    end
  end
  keys = subHash.keys
  values = subHash.values.flatten
  new = keys + values
  found = strs.find do |s|
    new.include?(s) == false
  end
  if !found.nil?
    exp = subHash.reduce([]) do |acc, (k, v)|
      acc.append(v.prepend(k))
      acc
    end
    exp.append([found])
  else
    exp = subHash.reduce([]) do |acc, (k, v)|
      acc.append(v.prepend(k))
      acc
    end
  end
end

p group_anagrams(["a"])
p group_anagrams([""])
p group_anagrams(["eat","tea","tan","ate","nat","bat"])
p group_anagrams(["",""])