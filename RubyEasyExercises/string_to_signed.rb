def convert(string)
  x = 0
  array = string.split('')
  array.each.with_index do |y, i|
    x = (x + (y.hex))
    x = x * 10 unless i == array.length-1
  end
  string.include?("-") ? x = -x : x
  return x
end


p convert2("-570")
p convert2("+100")
p convert2("2532")