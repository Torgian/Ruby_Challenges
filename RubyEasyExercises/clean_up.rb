def clean_up(string)
  regex = /[\W]/
  clean = string.split('')
  string = string.gsub(regex, " ")
  string = string.gsub(/\s+/, " ")
  p string
  # clean.each.with_index do |x,i|
  #   clean[i] = " " if regex.match(x)
  # end
  # clean = clean.gsub(/\n\s+/, " ")
  # p clean

  



end

clean_up("---what's my +*& line?")