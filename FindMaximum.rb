def max_sum(stack1, stack2, stack3, n1, n2, n3)
    sum1, sum2, sum3 = 0, 0, 0
  
    sum1 = stack1.sum
  
    sum2 = stack2.sum
  
    sum3 = stack3.sum
  
    top1, top2, top3 = 0, 0, 0
    ans = 0
    loop do
    
      if top1 == n1 || top2 == n2 || top3 == n3
        return 0
      end
  
      if sum1 == sum2 && sum2 == sum3
        return sum1
      end

      if sum1 >= sum2 && sum1 >= sum3
        sum1 -= stack1[top1]
        top1 += 1

      elsif sum2 >= sum1 && sum2 >= sum3
        sum2 -= stack2[top2]
        top2 += 1

      elsif sum3 >= sum2 && sum3 >= sum1
        sum3 -= stack3[top3]
        top3 += 1
      end
    end
  end
  
  stack1 = [3, 2, 1, 1, 1]
  stack2 = [4, 3, 2]
  stack3 = [1, 1, 4, 1]
  
  n1 = stack1.length
  n2 = stack2.length
  n3 = stack3.length
  
  puts max_sum(stack1, stack2, stack3, n1, n2, n3)