def multiply(a,b)
  if a > 0 then
    return b + multiply(a - 1, b )
  elsif a < 0 then
    return -b + multiply(a + 1, b )
  end
  return 0
end
