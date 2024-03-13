def maximum_sum(arr, k)
    n = arr.length
  
    k.times do
      min = Float::INFINITY
      index = -1
  
      (0...n).each do |j|
        if arr[j] < min
          min = arr[j]
          index = j
        end
      end
  
      # Break if minimum element is 0
      break if min == 0
  
      arr[index] = -arr[index]
    end
  
    sum = arr.sum
    return sum
  end
  
  arr = [-2, 0, 5, -1, 2]
  k = 4
  puts maximum_sum(arr, k)