def real_palindrome?(string)
  cleaned_up = string.downcase.split(/[^\w]*/)
  clean_string = cleaned_up.join('')
  reversed = cleaned_up.reverse.join('')
  p "'#{string}' is a palindrome, if you ignore case, whitespaces and special characters." if cleaned_up == reversed
  p "'#{string}' is NOT a palindrome!" if cleaned_up != reversed
end




real_palindrome?('madam') #== true
real_palindrome?('Madam') #== true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
real_palindrome?('356653')# == true
real_palindrome?('356a653')# == true
real_palindrome?('123ab321')# == false