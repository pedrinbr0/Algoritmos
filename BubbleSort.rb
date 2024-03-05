def bubble_sort(arr)
    n = arr.length
    for i in 0..n-1
      swapped = false
      for j in 0..n-i-2
        if arr[j] > arr[j + 1]
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
          swapped = true
        end
      end
      break unless swapped
    end
  end
  
  def print_array(arr)
    arr.each { |element| print "#{element} " }
    puts
  end
  
  arr = [64, 34, 25, 12, 22, 11, 90]
  bubble_sort(arr)
  puts "Sorted array:"
  print_array(arr)