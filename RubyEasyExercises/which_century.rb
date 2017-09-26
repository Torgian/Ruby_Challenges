
def which_century(year)

  if year > 10 && year < 20 
    return year.to_s << "th century."
  end

  second_digit = year % 10

  case second_digit
  when 1 then year.to_s << "st century"
  when 2 then year.to_s << "nd century"
  when 3 then year.to_s << "rd century"
  else
    year.to_s << "th century"
  end
end

def check_century(cent)
  year = cent.to_i
  century = year / 100
  if year % 100 != 0
    century += 1
  end
  which_century(century)
end

puts "Type in a year:"
answer = gets.chomp
p check_century(answer)
