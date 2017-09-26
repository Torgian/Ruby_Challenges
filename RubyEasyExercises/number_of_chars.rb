puts "Please write a word or multiple words: "
answer = gets.chomp
amount_of_chars = answer.split(" ").join('').length
puts "The number of characters in your answer is #{amount_of_chars.to_s}."
