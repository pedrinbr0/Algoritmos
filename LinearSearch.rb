def search(arr, x)
    arr.each_with_index do |element, index|
      return index if element == x
    end
    return -1
  end
  
  arr = [2, 3, 4, 10, 40]
  x = 10
  
  result = search(arr, x)
  if result == -1
    puts "Element is not present in array"
  else
    puts "Element is present at index #{result}"
  end