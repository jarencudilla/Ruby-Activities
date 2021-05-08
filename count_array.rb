
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]

def array_count_and_sum(arr)
    return [] if arr.empty?
    arr.each_with_object([0,0]) do |b,a|
      a[0] += 1 if b > 0
      a[1] += b if b < 0
    end
    return array_count_and_sum[arr]
end
  


# array_count_and_sum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]