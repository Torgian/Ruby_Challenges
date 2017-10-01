def show_multiplied_average(numbers)
  total = numbers.reduce(:*) / (numbers.length).to_f
  total.round(3)
  #can add code here to add '0's if needed, but is uncessarily mathematically
end

puts show_multiplied_average([3,5])
puts show_multiplied_average([6])
puts show_multiplied_average([2,5,7,11,13,17])