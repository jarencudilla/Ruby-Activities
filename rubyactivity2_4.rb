arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []

# n = 0
# new_arr = arr.map do |n|
#   n % 2 === 0
# end

for n in arr
  if n%2==0
    new_arr.push(n)
  end
end

p new_arr