def how_many(arr)
  counted = Hash.new
  #use hash and keys
  arr.each do |a|
    #counted[a] = 0 if counted.key?(a) != true
    #counted[a] += 1 if counted.key?(a) == true
    counted.key?(a) ? counted[a] += 1 : counted[a] = 1
  end
  p counted
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

how_many(vehicles)