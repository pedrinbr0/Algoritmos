# length = comprimento
def min_sum(arr)
    # find the minimum element of arr
    min_val = arr.min
    
    return min_val * (arr.length - 1)
end

arr = [7, 2, 3, 4, 5, 6]
puts min_sum(arr)