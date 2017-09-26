p "Enter a number greater than 0:"
num = gets.chomp.to_i
p "Press 's' for the sum, or 'p' for the product"
answer = gets.chomp

if answer == 's'
  sum = (1..num).reduce(:+)
  puts "The sum of the integers from 1 to #{num} is #{sum.to_s}."
elsif answer == 'p'
  product = (1..num).reduce(:*)
  puts "The product of the integers from 1 to #{num} is #{product.to_s}."
else
  puts "I don't under stand #{answer}!"
end


