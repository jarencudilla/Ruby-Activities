# frozen_string_literal: true

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []

# n = 0
# new_arr = arr.map do |n|
#   n % 2 === 0
# end

arr.each do |n|
  new_arr.push(n) if n.even?
end

p new_arr
