def recursive_multiply(x,y)
  if x > 0 then
    return y + recursive_multiply(x - 1, y )
  elsif x < 0 then
    return -y + recursive_multiply(x + 1, y )
  end
  return 0
end
