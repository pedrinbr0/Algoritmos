def comp(s, t)
    ss = s.split("/")
    tt = t.split("/")
    
    date1 = ss.map(&:to_i)
    date2 = tt.map(&:to_i)
    
    if date1[2] != date2[2]
      return date1[2] - date2[2]
    elsif date1[1] != date2[1]
      return date1[1] - date2[1]
    elsif date1[0] != date2[0]
      return date1[0] - date2[0]
    else
      return 0
    end
  end
  
  def next_closest_date(arr, q)
    arr.sort! { |a, b| comp(a, b) }
    l = 0
    r = arr.length - 1
    ind = -1
    
    while l <= r
      m = (l + r) / 2
      c = comp(q, arr[m])
      if c == 0
        ind = m
        break
      elsif c < 0
        r = m - 1
        ind = m
      else
        l = m + 1
      end
    end

    ind == -1 ? "-1" : arr[ind]
  end
  
  def perform_queries(arr, q)
    q.each { |query| puts next_closest_date(arr, query) }
  end
  
  arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
  
  q = ["23/3/4345", "4/4/34234234", "12/3/2"]
  
  perform_queries(arr, q)