#use reduce on the array
#then divide the sum by the length of the array
#mean average found

#alternativly, use a while loop to add each number, then divide

def average(arr)
  sum = 0
  a = arr.length-1
  while a != -1
    
    sum = sum += arr[a]
    a -= 1
  end
  sum / arr.length.to_i
end

def average2(arr)
  arr.reduce(:+) / arr.length
end



puts average([1, 5, 87, 45, 8, 8]) == 25
puts average2([9, 47, 23, 95, 16, 52]) == 40
