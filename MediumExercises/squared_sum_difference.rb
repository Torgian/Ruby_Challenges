def squared_sum_diff(number)
  return squared_sum(number) - summed_squares(number)
end

def squared_sum(number)
  return (1..number).reduce(:+) ** 2
end

def summed_squares(number)
  a = 0
  (1..number).each {|num| a = a + num**2}
  return a
end

p squared_sum_diff(3)
p squared_sum_diff(10)
p squared_sum_diff(100)