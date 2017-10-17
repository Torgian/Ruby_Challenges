def fibonacci(num, fib=[1,1])
  x = fib[0]
  y = fib[1]
  if fib[num-1]
    p fib[num-1]
  else
    fibonacci(num, fib.push(x+y))
  end
end

def fibonacci2(num)
  return num if ( 0..1 ).include? num
  
  ( fibonacci(num-1))+ (fibonacci(num-2) )
  
end

def fib3(num)

  return num if (0..1).include? num
  # var1 = fib3(num+1)*fib3(num)
  # var2 = fib3(num)*fib3(num-1)
  (fib3(num-1) + fib3(num)) + (fib3(num) + fib3(num+1))

end








puts fibonacci(100)
p fibonacci2(20) #== 144
p fib3(3)# == 6765
fibonacci(100001)