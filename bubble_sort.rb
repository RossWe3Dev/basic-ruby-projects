# frozen_string_literal: true

def bubble_sort(arr)
  n = arr.length

  while n > 1
    new_n = 0
    (1..n - 1).each do |i|
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        new_n = i
      end

      puts "#{arr} at iteration #{i}"
    end
    n = new_n
  end
  p arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
bubble_sort([6, 2, 67, 1, 34, 1, 8, 13])
