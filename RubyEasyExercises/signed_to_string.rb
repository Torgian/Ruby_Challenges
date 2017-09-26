def convert(num)
  return "0" if num == 0
  numbers = ["0","1","2","3","4","5","6","7", "8", "9"]
  array = []
  n = num
  if n < 0
    n = n - (n*2)
  end
  
  while n > 0
      x = n%10
      array.push(numbers[x])
      n = n/10
      p array
  end
  array.push("-") if num < 0
  return array.reverse.join('')
end

p convert (4321)
p convert(-123)
p convert(+123)