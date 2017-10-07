def substrings(string)
  palindromes = []
  
  start = 0
  ending = string.length

  until start == ending
    palindromes.push(split_string(string, start))
    start += 1
  end
  palindromes.flatten(1)
end

def split_string(string, start)
  i = 1
  temp_palindromes = []
  while i < string.length
    if string.slice(start..i).length > 1 && ispalindrome?(string.slice(start..i))# == true
      temp_palindromes.push(string.slice(start..i))
    end
    i+=1
  end
  temp_palindromes
end

def ispalindrome?(substring)
  substring.reverse == substring ? true : false
end


puts substrings('abcd') == []
p substrings('madam') == ['madam', 'ada']
puts substrings('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts substrings('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]