def bubble_sort!(array)
  y = array.length-1
  i = 1
  until y == 0
    swap = false
    while i <= y
      a = array[i]
      b = array[i-1]
      if array[i-1] > array[i]
        array[i-1] = a
        array[i] = b
        swap = true
      end
      i += 1
    end
    p swap
    return array if swap == false
    y -= 1
    i = 1
  end
  #required if the array is only has two elements
  return array
end

p bubble_sort!([6,2,7,1,4,9])
p bubble_sort!([5,3])