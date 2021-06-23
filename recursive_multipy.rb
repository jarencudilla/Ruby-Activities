def recursive_multiply(a,b)
  if a > 0 then
    return b + recursive_multiply(a - 1, b )
  elsif a < 0 then
    return -b + recursive_multiply(a + 1, b )
  end
  return 0
end
