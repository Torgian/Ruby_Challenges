def digit_list(numbers)
  numbers.to_s.split('').map {|a| a.to_i}
end


puts digit_list(12345) == [1,2,3,4,5]
p digit_list(7) == [7]
p digit_list(375290) == [3,7,5,2,9,0]
p digit_list(444) == [4,4,4]