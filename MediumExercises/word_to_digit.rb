def word_to_digit(string)
  numbers = {:"zero" => "0", :"one" => "1", :"two" => "2", :"three" => "3", :"four" => "4", :"five" => "5", :"six" => "6", :"seven" => "7", :"eight" => "8", :"nine" => "9"}
  words = string.split(' ')
  words.each do |word|
    string = string.gsub(word, numbers.fetch(word.to_sym)) if numbers.has_key?(word.to_sym)
  end
  puts string
end

word_to_digit('Please call me at five five five one two three four. Thanks.')