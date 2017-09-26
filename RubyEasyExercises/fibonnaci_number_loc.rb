def fibonacci(num_of_digits)
  sum = 1
  loc = [1,1]
  x = 1
  y = 1
  while counter < 100#sum.to_s.length != num_of_digits
    sum = x + y #=> 2, => 2 + 1 == 3, => 3 + 2 = 5, => 5 + 3 = 8,
    y = x #=> 1, => 2, => 3, => 5
    x = sum #=>2, => 3, => 5, => 8
    loc.push(sum)
  end
  loc.index(sum) #without the +1, reads "475"
end

def fibonacci2(num_of_digits)
  loc = [1,1]
  i = 1
  while loc[i].to_s.length != num_of_digits

    loc.push(loc[loc.length -1] + loc[loc.length -2])
    i+=1
  end
  loc.index(loc[i])  #without the +1, reads "475"
end


p fibonacci(100)
p fibonacci2(100)

