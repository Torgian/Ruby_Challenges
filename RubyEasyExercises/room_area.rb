p "Enter the length of the room in meters: "
length = gets.chomp.to_i
p "Now, give me the width: "
width = gets.chomp.to_i

meters = length * width
feet = meters * 10.7639

puts "The area of the room is #{meters.to_s} square meters (#{feet.to_s} square feet)"