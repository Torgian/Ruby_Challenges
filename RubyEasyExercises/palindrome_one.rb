def palindrome?(string)
  p "'#{string}' is a palindrome!" if string == string.split('').reverse.join('').to_s
  p "'#{string}' is NOT a palindrome!" if string != string.split('').reverse.join('').to_s
end



palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')