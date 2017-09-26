def oddities(arr)
  p arr.select.with_index {|x, i| i%2 == 0}
end



oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []