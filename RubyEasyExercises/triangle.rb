def pyramid(value)
  x = value
  while x > 0  
    puts (" " * x << "*" * (value - (x-1))) + ("*" * (value-(x-1)) << " " * x)
    x -= 1
  end
end

def triangle(value)
  x = value
  while x > 0  
    puts (" " * x << "*" * (value - (x-1)))
    x -= 1
  end
end

triangle(5)
triangle(9)