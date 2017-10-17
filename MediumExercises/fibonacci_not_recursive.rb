def fibonacci(number)

  fib = [number+1]
  number.times do |num|
    if num < 2
      fib = [0,1,1]
    else
      fib.push (fib[-1] + fib[-2])
    end
  end
  return fib.last
end

# # PHI = 1.6180339887498959
# # TAU = 0.5004471413430931

# def fibonacci2(n)
#   (PHI**n) + TAU.to_i
# end

p fibonacci(5)
fibonacci(100_000_007)
p fibonacci(20)
