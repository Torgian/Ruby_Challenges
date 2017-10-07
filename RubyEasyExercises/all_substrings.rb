def substrings(string)
  subbed = []
  start = 0
  ending = string.length
  until start == ending
    (start...ending).each do |i|
      subbed.push(string.slice(start..i))
    end
    start += 1
  end
  subbed
end

p substrings('abcde')

def substrings_at_start(string)
  array = []
  string = string + ''
  string.chars.reduce do |acc, ele|
    array << acc
    acc + ele
  end
  array.push(string)
end

def substrings2(string)
  array_1 = []
  while string.size >= 1
  array_1 << substrings_at_start(string)
  string[0] = ''
end
array_1
end

p substrings2('abcde')