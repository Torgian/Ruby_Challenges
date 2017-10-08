def rotate_rightmost(numbers)
  array_of_numbers = Array.new(numbers.to_s.split(''))
  array_of_numbers.each do |num|
    array_of_numbers.push(array_of_numbers.slice!(array_of_numbers.index(num)))
  end
  array_of_numbers.join.to_i
end

p rotate_rightmost(735291)
p rotate_rightmost(3)
p rotate_rightmost(35)
p rotate_rightmost(105)
p rotate_rightmost(8_703_529_146)