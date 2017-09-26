def multiples(num)
  numbers = 0
  (1..num).each do |x|
    if x%3 == 0 || x%5 == 0
      numbers += x
    end  
  end
  p numbers
end

def multiples2(num)
  numbers = 0
  (1..num).each {|x| numbers += x if x%3 == 0 || x%5 == 0}
  p numbers
end

multiples2(12)