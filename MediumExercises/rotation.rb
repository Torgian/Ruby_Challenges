def rotate_items(array)  
  rotated = Array.new(array)
  rotated.push(rotated.shift)
end



p rotate_items([7, 3, 5, 2, 9, 1])# == [3, 5, 2, 9, 1, 7]
p rotate_items(['a', 'b', 'c'])# == ['b', 'c', 'a']
p rotate_items(['a'])# == ['a']