# frozen_string_literal: true

test_arr = [-1, 0, 3, 4, 25, 26]

def isSquare(num)
  i = 0
  return false if num.negative?

  (0..num).each do
    return true if i * i == num

    i += 1
    return false if i * i > num
  end
end

test_arr.each { |x| puts "#{x} => #{isSquare(x)}" }
