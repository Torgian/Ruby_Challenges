def multiply_lists(arr1, arr2)
  totals = []
  #the following returns nil, so results must be pushed into an array
  arr1.zip(arr2) {|number_one, number_two| c << number_one * number_two}
  return c
end

def multiply_lists2(arr1, arr2)
  totals = []
  #achieves the same as above, but with each and index
  arr1.each_with_index {|number, i| totals << number * arr2[i]}
  return totals
end

p multiply_lists2([3, 5, 7], [9, 10, 11])