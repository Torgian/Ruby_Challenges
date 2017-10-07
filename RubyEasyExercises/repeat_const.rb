def repeat_consonants(string)
  string.chars.map do |letter|
    letter.match(/[aeiou\W\d]/) ? letter : letter*2
  end.join('')
end

p repeat_consonants('String') == "SSttrrinngg"
p repeat_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p repeat_consonants("July 4th") == "JJullyy 4tthh"
p repeat_consonants('') == ""