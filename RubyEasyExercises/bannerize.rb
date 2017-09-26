def bannerize(string)
  how_long = string.length+2
  border = "+" + "-"*how_long + "+"
  side_borders = "|" + " "*how_long + "|"
  string_line = "|" + " #{string} " + "|"

  p border, side_borders, string_line, side_borders, border

end

bannerize("I am going away!")
bannerize("Robinson Caruso and the Little Minnow")
bannerize("")