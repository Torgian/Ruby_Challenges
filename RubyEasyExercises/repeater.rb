def repeater(string)
  string.chars.map {|letter| letter*2}.join('')
end

p repeater("abcde")
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''