def reverse_sentence(string)
  p string.split(" ").reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence2(string)
  splitted = string.split(" ")
  reversed = []
  while splitted.length != 0
    reversed.push(splitted.pop)
  end
  p reversed.join(" ")
end

  
reverse_sentence2('Hello World')
puts reverse_sentence2('Reverse these words') == 'words these Reverse'