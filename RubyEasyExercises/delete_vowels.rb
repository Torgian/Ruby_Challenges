def delete_vowels(array)
  #p array.keep_if {|x| x =~ /[^aeiou]*/}
  array.map {|string| string.delete "/[^aeiouAEIOU]*/"}

end

p delete_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p delete_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p delete_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']