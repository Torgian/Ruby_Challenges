def list_reverse (array)
  shifted = shifted.push(array)
  while shifted.length < array.length
    shifted.unshift(array.shift(2).rotate)
  end
  #array = array.push(shifted).flatten
  p shifted.flatten
  p array.object_id, array
  p shifted.object_id
end

def list_reverse2(array)
  reversed = []
  reversed.push(array)
  reversed.each_with_index do |item, i|
    reversed.unshift(reversed.slice!(i))
  end
  p array.object_id
  p reversed.object_id
end


list_reverse2([1,2,3,4,5])
list_reverse2(["abc", "def"])