def stringy(num)
  numbers = []
  (1..num).each {|x| x%2 == 0 ? numbers << 0 : numbers << 1}
  numbers = numbers.join('').to_s
  
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'