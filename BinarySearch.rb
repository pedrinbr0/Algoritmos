# l= índice esquerdo, r= índice direito

def binary_search(arr, x)
    l = 0
    r = arr.length - 1
  
    while l <= r
      mid = l + (r - l) / 2
  
      if arr[mid] == x
        return mid
      end
  
      if arr[mid] < x
        l = mid + 1
      else
        r = mid - 1
      end
    end
  
    return -1
  end
  
  arr = [2, 3, 5, 10, 40]
  x = 10
  
  result = binary_search(arr, x)
  if result != -1
    puts "Element is present at index #{result}"
  else
    puts "Element is not present in array"
  end