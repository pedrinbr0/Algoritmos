def count_sort(input_array)
    # Finding the maximum element of input_array.
    m = input_array.max
  
    # Initializing count_array with 0
    count_array = Array.new(m + 1, 0)
  
    # Mapping each element of input_array as an index of count_array
    input_array.each_index { |i| count_array[input_array[i]] += 1 }
  
    # Calculating prefix sum at every index of count_array
    (1..m).each { |i| count_array[i] += count_array[i - 1] }
  
    # Creating output_array from count_array
    output_array = Array.new(input_array.length)
  
    (input_array.length - 1).downto(0) do |i|
      output_array[count_array[input_array[i]] - 1] = input_array[i]
      count_array[input_array[i]] -= 1
    end
  
    output_array
  end
  
  if __FILE__ == $PROGRAM_NAME
    # Input array
    input_array = [4, 3, 12, 1, 5, 5, 3, 9]
  
    # Output array
    output_array = count_sort(input_array)
  
    output_array.each { |num| print "#{num} " }
  end