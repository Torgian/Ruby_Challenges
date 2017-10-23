def fib_matrix(num)
  f = [[1,1],[1,0]]
  if num == 0
    return 0
  else
    power(f, num)  
  end
  return f[0][0]
end


def multiply(f, m)
  x = f[0][0]*m[0][0] + f[0][1]*m[1][0]
  y = f[0][0]*m[0][1] + f[0][1]*m[1][1]
  z = f[1][0]*m[0][0] + f[1][1]*m[1][0]
  w = f[1][0]*m[0][1] + f[1][1]*m[1][1]

  f[0][0] = x
  f[0][1] = y
  f[1][0] = z
  f[1][1] = w
end

def power(f, num)
  i = 3
  m = [[1,1],[1,0]]
  while i <= num
    multiply(f, m)
    i += 1
  end
end


p matrix_fib(20)