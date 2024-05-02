# frozen_string_literal: true

def merge_sort(arr)
  result = []
  if arr.length == 1
    result.concat(arr)
  else
    midpoint = arr.length / 2
    left = merge_sort(arr[0..midpoint - 1])
    right = merge_sort(arr[(midpoint)..])

    while !left.empty? && !right.empty?
      if left[0] < right[0]
        result.push(left[0])
        left.shift
      else
        result.push(right[0])
        right.shift
      end
    end

    left.empty? ? result.concat(right) : result.concat(left)
  end
  result
end

merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # => [0, 1, 1, 2, 3, 5, 8, 13]
merge_sort([105, 79, 100, 110]) # => [79, 100, 105, 110]

merge_sort([62, 73, 67, 76, 21, 1, 28]) # => [1, 21, 28, 62, 67, 73, 76]
