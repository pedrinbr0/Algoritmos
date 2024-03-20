def reverse_array(arr, start, end_index)
    while start < end_index
      arr[start], arr[end_index] = arr[end_index], arr[start]
      start += 1
      end_index -= 1
    end
  end
  
  def right_rotate(arr, d, n)
    reverse_array(arr, 0, n - 1)
    reverse_array(arr, 0, d - 1)
    reverse_array(arr, d, n - 1)
  end
  
  def print_array(arr, size)
    arr.each { |element| print "#{element} " }
  end
  
  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  n = arr.length
  k = 3
  
  right_rotate(arr, k, n)
  print_array(arr, n)