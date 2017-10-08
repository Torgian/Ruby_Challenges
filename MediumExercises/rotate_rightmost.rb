def rotate_rightmost(numbers, n)
  array_of_numbers = Array.new(numbers.to_s.split(''))
  array_of_numbers.push(array_of_numbers.slice!(-n)).join.to_i
end

p rotate_rightmost(567483, 1)
p rotate_rightmost(567483, 2)
p rotate_rightmost(567483, 3)
p rotate_rightmost(567483, 4)
p rotate_rightmost(567483, 5)
p rotate_rightmost(735291, 6)