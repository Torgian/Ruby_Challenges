def featured(number)
  return "No possible number that is odd, with no repeating numbers, in a multiple of 7." if number >= 9_876_543_201
  #this will make sure the first number that is checked is above the original number.
  multiple = number/7.round + 1 #takes the number, divides by 7, rounds down and adds one.

  if multiple.odd?
    calculate_number(multiple)
  else
    calculate_number(multiple+1)
  end
end

def calculate_number(multiple)

  while is_featured?(multiple*7) == false
    multiple += 2
  end
  is_featured?(multiple*7)
end

def is_featured?(multiplied)
  num = multiplied.to_s
  i = 0
  while i < num.length
    if num.count(num[i]) == 1
      i += 1
    else
      return false
    end
  end
  return multiplied
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987)
p featured(9_876_543_201)
p featured(9_999_999_999)