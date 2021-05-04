# frozen_string_literal: true

arr = [1, 3, 5, 7, 9, 11]
number = 5

arr.each do |num|
  puts "The number #{number} appears in the array" if num == number
end
