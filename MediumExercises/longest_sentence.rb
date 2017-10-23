story = File.read("pg84.txt")

story = story.scan(/[^\.!?]+[\.!?]/).map(&:strip)

longest_sentence = String.new
story.each do |sentence|
  if longest_sentence.length < sentence.length
    longest_sentence = sentence
  end
end
longest_sentence = longest_sentence.split(' ')
puts longest_sentence.length



#use string.scan(regex) to catch all occurances of a word
#file open