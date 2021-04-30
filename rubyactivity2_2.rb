puts "Enter a number between 0 and 100."
num = gets.chomp.to_i
if num < 0
  puts "Negative!"
elsif num <= 50
  puts "The number #{num} is between 0 and 50."
elsif num <= 100
  puts "The number #{num} is between 51 and 100."
else
  puts "The number #{num} is over 100!!!!!!!"
end