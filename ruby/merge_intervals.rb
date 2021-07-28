# Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.



# Example 1:

# Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
# Output: [[1,6],[8,10],[15,18]]
# Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
# Example 2:

# Input: intervals = [[1,4],[4,5]]
# Output: [[1,5]]
# Explanation: Intervals [1,4] and [4,5] are considered overlapping.
require 'pry'

def merge(intervals)
  new_array = []
  intervals.sort_by {|i| i.min}
  l = intervals.length
  c = 0
  while c < (l - 1)
    if intervals[c]
      if intervals[c].max >= intervals[c + 1].min
        new_array.append(intervals[c].min)
        new_array.append(intervals[c + 1].max)
        intervals.delete_at(c + 1)
        intervals.delete_at(c)
        intervals.append(new_array)
        c+=1
      else
        c += 1
      end
    else
      c += 1
      next
    end
  end
  return intervals
end

# attempt1 = merge([[1,4],[4,5]])
# print attempt1
# # TODO expected [[1,5]]

attempt2 = merge([[1,3],[2,6],[8,10],[15,18]])
print attempt2
# TODO expected [[1,6],[8,10],[15,18]]
