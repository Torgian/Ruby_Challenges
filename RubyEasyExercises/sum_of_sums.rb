def summing(numbers_array)
  #destructive. Removes the first number from the given argument
  total = [numbers_array.slice!(0)]
  numbers_array.each_with_index do |number,i|
    total.push(total[i] + number)
  end
  total.reduce(:+)
end

def summing2(numbers_array)
  #non-destructive version.
  total = [numbers_array.slice(0)]
  i = 1
  while i < numbers_array.length
    total.push(total[i-1] + numbers_array[i])
    i += 1
  end
  total.reduce(:+)
end


p summing([3, 5, 2])
p summing([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p summing2([4]) == 4
p summing2([1, 2, 3, 4, 5]) == 35