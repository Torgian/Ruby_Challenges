def leap_year?(year)
  year = year.to_i
  if year < 1752
    p year % 4 == 0
  else
    p year, (year % 4 == 0) ^ (year % 100 == 0) ^ (year % 400 == 0)
  end
end

# leap?(2016) == true
# leap?(2015) == false
# leap?(2100) == false
# leap?(2400) == true
# leap?(240000) == true
# leap?(240001) == false
# leap?(2000) == true
# leap?(1900) == false
# leap?(1752) == true
# leap?(1700) == false
# leap?(1) == false
# leap?(100) == false
# leap?(400) == true

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true