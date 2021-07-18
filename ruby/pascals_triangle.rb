def generate(num_rows)
  mainArray = []
  subArray = [1]
  range = (1..num_rows).to_a
  if range.length == 1
    return mainArray.append(range)
  else
    range.reduce(mainArray) do |acc, elem|
        if subArray.length == 1
          acc << [1]
          subArray << 1
        else
          addArray = subArray
          acc << addArray
          subArray = next_subarray(subArray)
          # require 'pry'; binding.pry
        end
          acc

    end
      
    
  end
end

def next_subarray(array)
  n = 0
  newArray = array
  array.each_with_index do |e,i|
    if !array[i+1].nil?
      n = e + array[i + 1]
      newArray.insert(i+1, n)
      newArray
    else
      array
    end
  end
  require 'pry'; binding.pry
end

p generate(5)
# expect => [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

# p generate(1)
# expect => [[1]]