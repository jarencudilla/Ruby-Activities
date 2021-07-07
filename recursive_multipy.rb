def recursive_multiply(x, y)
  if x > 0
    return y + recursive_multiply(x - 1, y)
  elsif x < 0
    return -y + recursive_multiply(x + 1, y)
  end

  0
end
