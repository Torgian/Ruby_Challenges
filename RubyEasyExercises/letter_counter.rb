def letter_counter(string)
  sizes = Hash.new
  string.split(' ').each do |word|
    sizes.has_key?(word.length) ? sizes[word.length] += 1 : sizes[word.length] = 1
  end
  sizes
end



p letter_counter('Hey diddle diddle, the cat and the fiddle!')
p letter_counter('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p letter_counter('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p letter_counter("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p letter_counter('') == {}