def sequence(count, number)
  #does not return an array
  multiples = count.times {|multiple| p number * multiple}
  multiples
end

def sequence2(count, number)
  #returns array
  (1..count).map {|num| number * num}
end

def sequence3(count, number)
  #returns array, but starts from 0 instead of 1
  count.times.map {|n| number * n}
end

p sequence3(4,1)
p sequence2(5, -8)
p sequence2(3, 0)
p sequence(0, 203232)