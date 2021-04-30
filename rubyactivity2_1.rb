arr = [1, 3, 5, 7, 9, 11]
number = 5

arr.each do |num|
    if num == number
      puts "The number #{number} appears in the array"
    end
  end