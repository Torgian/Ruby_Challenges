def summed_digits(int)
  num_arr = []
  numbers_only = int.to_s.match(/\d*/).to_s
  numbers_only.each_char {|x| num_arr.push(x.to_i)}
  num_arr.reduce(:+)
end

def summed_digits2(int)
  num_arr = []
  int.to_s.each_char {|x| num_arr.push(x.to_i)}
  num_arr.reduce(:+)
end



puts summed_digits2(23) == 5
puts summed_digits2(496) == 19
puts summed_digits2(123_456_789) == 45