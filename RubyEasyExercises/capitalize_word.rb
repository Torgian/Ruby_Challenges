def word_cap(strings)
  strings.split(' ').map {|word| word.capitalize}.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word')