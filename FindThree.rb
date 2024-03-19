def print_3_largest(arr)
    arr_size = arr.length
    
    if arr_size < 3
      puts "Inválido"
      return
    end
    
    third = first = second = -Float::INFINITY
  
    arr.each do |element|
      if element > first
        third = second
        second = first
        first = element
      elsif element > second && element != first
        third = second
        second = element
      elsif element > third && element != second && element != first
        third = element
      end
    end
  
    puts "#{first}, #{second}, #{third}"
  end
  
  arr = [12, 13, 1, 10, 34, 11, 34]
  print_3_largest(arr)