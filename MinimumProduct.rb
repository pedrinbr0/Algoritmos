def min_product_subset(arr)
    n = arr.length
    return arr[0] if n == 1
  
    max_neg = -Float::INFINITY
    min_pos = Float::INFINITY
    count_neg = 0
    count_zero = 0
    prod = 1
  
    arr.each do |num|
      if num == 0
        count_zero += 1
        next
      end
  
      if num < 0
        count_neg += 1
        max_neg = [max_neg, num].max
      end
  
      min_pos = [min_pos, num].min if num > 0
      prod *= num
    end
  
    return 0 if count_zero == n || (count_neg == 0 && count_zero > 0)
    return min_pos if count_neg == 0
  
    if count_neg.even? && count_neg != 0
      prod /= max_neg
    end
  
    prod
  end
  
  arr = [-1, -1, -2, 4, 3]
  puts min_product_subset(arr)