answers = []

while answers.length != 5
  puts "#{answers.length} entered: Enter a number:"
  answers.push(gets.chomp.to_i)
end

puts "Enter one more number."
final = gets.chomp
if answers.include?(final)
  puts "The number #{final} appears in #{answers}."
else
  puts "The number #{final} does not appear in #{answers}."
end

