def reverse_sentence(string)
  reversed = string.split(" ").reverse
  reversed_words = reversed.map {|x| x.split('').reverse.join('')} 
  reversed_words.join(' ')
end

puts reverse_sentence('Professional')          # => lanoisseforP
puts reverse_sentence('Walk around the block') # => Walk dnuora the kcolb
puts reverse_sentence('Launch School') 