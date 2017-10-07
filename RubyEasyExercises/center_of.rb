def center_of(string)
  string_length = string.length
  which_chars?(string, string_length)
end

def which_chars?(string, string_size)
  is_even?(string_size) ? string[string_size/2-1..string_size/2] : string[string_size/2]
end

def is_even?(length_of_string)
  length_of_string.even?
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool')# == 'hs'
p center_of('x') #== 'x'