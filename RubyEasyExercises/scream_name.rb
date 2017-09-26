p "What is your name?"
answer = gets.chomp

if answer.end_with?("!")
  p "WHY ARE WE SCREAMING, #{answer.upcase}?!"
else
  p "Hello, #{answer}."
end
