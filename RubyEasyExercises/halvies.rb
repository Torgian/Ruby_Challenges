def halve(array)#destructive
  halved = []
  array.length%2 == 0 ? halved.push(array.slice!(0..array.length/2-1)) : halved.push(array.slice!(0..array.length/2))
  halved.push(array)
  halved
end

def halve2(array)#non-destructive version 
  halved = []
  if array.length%2 == 0
    halved.push(array.slice(0..array.length/2-1))
    halved.push(array.slice(array.length/2..array.length))
  else
    halved.push(array.slice(0..array.length/2))
    halved.push(array.slice(array.length/2+1..array.length))
  end
  halved
end


p halve2([1,2,3,4])
p halve2([1,2,3,4,5,6,7])