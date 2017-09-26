def ascii_convert(string)
  x = string.unpack("U*")
  p x.reduce(:+)
end


ascii_convert("Four score")