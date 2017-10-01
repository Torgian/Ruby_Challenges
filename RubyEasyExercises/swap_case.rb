def swap_case(string)
  lower = /[a-z]/
  string = string.chars
  string.map do |letter|
    letter.match(lower) ? letter.upcase : letter.downcase
  end.join('')
end

p swap_case("SpaghetTi And meaTY bALLS")
p swap_case('Tonight on XYZ-TV')
