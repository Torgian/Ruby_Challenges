def substrings(string)
  subbed = []
  (0...string.length).each do |i|
    subbed.push(string.slice(0..i))
  end
  puts subbed
end

def substrings2(string)
  string.split('').map.with_index do |c,i|
    string.slice(0..i)
  end
end


print substrings2('abc')