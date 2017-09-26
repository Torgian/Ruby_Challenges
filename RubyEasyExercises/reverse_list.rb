def list_reverse (array)
  shifted = []
  while array.length > 0
    shifted.unshift(array.shift(2).rotate)
  end
  array = array.push(shifted).flatten

end

def list_reverse2(array)
  array.each_with_index do |item, i|
    array.unshift(array.slice!(i))
  end
end


p list_reverse2([1,2,3,4,5])
p list_reverse2(["abc"])
p list_reverse2(["abc", "def"])