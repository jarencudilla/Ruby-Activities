def up_array(arr)
  if arr { |x| x.negative? && x > 9 && x.is_empty? }
    new_arr = []
    arr.join
    arr + 1

  end
end
