def include?(array, value)
  array.index(value) ? true : false
end

def include2?(array, value)
  if array.index(value)
    return true
  else
    return false
  end
end


p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6)# == false
p include?([], 3) #== false
p include?([nil], nil)# == true
p include?([], nil)# == false