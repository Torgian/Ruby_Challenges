# def convert(int)
#   ordinals = int.split('')
#   ordinals.each.with_index {|ordinal, i| ordinals[i] = ordinal.ord - 48 }
#   p ordinals = ordinals.flatten {|x| x}
# end

def convert(int)
  x = 0
  array = int.split('')
  array.each.with_index do |y, i|
    x = (x + (y.hex))
    x = x * 10 unless i == array.length-1
  end
  return x
end

p convert('1234')
p convert('3225')
p convert('4321') == 4321
p convert('570') == 570