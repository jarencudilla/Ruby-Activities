# array

arr = [1,2,3,4,5,6,7,8,9,10]
arr.each do |number|
    puts number
  end

# hash

h = {a:1, b:2, c:3, d:4}

h[:b]
h[:e] = 5
    puts "#{h}"

# contact data

contact_data = [["ana@email.com", "123 Main st.", "555-123-4567"],
["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}


contacts["Analyn Cajocson"][:email] = contact_data[0][0]
contacts["Analyn Cajocson"][:address] = contact_data[0][1]
contacts["Analyn Cajocson"][:phone] = contact_data[0][2]
contacts["Avion School"][:email] = contact_data[1][0]
contacts["Avion School"][:address] = contact_data[1][1]
contacts["Avion School"][:phone] = contact_data[1][2]

puts "Analyn Cajocson: email: #{contacts["Analyn Cajocson"][:email]} address: #{contacts["Analyn Cajocson"][:address]} phone: #{contacts["Analyn Cajocson"][:phone]}"
puts "Avion School: email: #{contacts["Avion School"][:email]} address: #{contacts["Avion School"][:address]} phone: #{contacts["Avion School"][:phone]}"