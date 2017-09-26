def convert(num)
  return "0" if num == 0
  numbers = ["0","1","2","3","4","5","6","7", "8", "9"]
  array = []
  n = num
  
  while n > 0
    x = n%10
    array.push(numbers[x])
    n = n/10
  end
  return array.reverse.join('')
end

p convert(12345)
p convert(0)
p convert (5000)