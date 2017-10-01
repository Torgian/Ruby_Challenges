def next_to_last(string)
  words = string.split(' ')
  words[-2]
end

puts next_to_last('last word') == 'last'
puts next_to_last('Launch School is great!') == 'is'