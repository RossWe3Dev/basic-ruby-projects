def bubble_sort(arr)
  n = arr.length
  swapped = true

  while swapped do
    for i in 0...n-1
      swapped = false
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    n = n-1
  end
  p arr
end

bubble_sort([4,3,78,2,0,2])
bubble_sort([6,2,67,1,34,8,13])