puts "Enter a postive number: "
first = gets.chomp.to_i
puts "Enter another positive number: "
second = gets.chomp.to_i

puts "#{first.to_s} + #{second.to_s} = #{(first.to_i + second.to_i).to_s}"
puts "#{first.to_s} - #{second.to_s} = #{(first.to_i - second.to_i).to_s}"
puts "#{first.to_s} * #{second.to_s} = #{(first.to_i * second.to_i).to_s}"
puts "#{first.to_s} / #{second.to_s} = #{(first.to_i / second.to_i).to_s}"
puts "#{first.to_s} ** #{second.to_s} = #{(first.to_i ** second.to_i).to_s}"
puts "#{first.to_s} % #{second.to_s} = #{(first.to_i % second.to_i).to_s}"