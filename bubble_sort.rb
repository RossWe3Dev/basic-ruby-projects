# frozen_string_literal: true

def bubble_sort(arr)
  n = arr.length
  swapped = true

  while swapped
    (0...n - 1).each do |i|
      swapped = false
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    n -= 1
  end
  p arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
bubble_sort([6, 2, 67, 1, 34, 8, 13])
