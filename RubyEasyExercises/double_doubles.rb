def double_up(integer)
  number = integer.to_s
  if number.length % 2 == 1
    return number.to_i * 2
  else
    double_or_not(number)
  end
end

def double_or_not(number)
  if number.slice(0...number.length/2) == number.slice(number.length/2...number.length)
    return number.to_i
  else
    return number.to_i * 2
  end
end


puts double_up(44)
puts double_up(334433)
puts double_up(747)
puts double_up(37) == 74
puts double_up(444) == 888
puts double_up(107) == 214
puts double_up(103103) == 103103
puts double_up(3333) == 3333
puts double_up(7676) == 7676
puts double_up(123_456_789_123_456_789) == 123_456_789_123_456_789
puts double_up(5) == 10