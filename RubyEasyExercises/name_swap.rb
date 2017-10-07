def swap_names(string)
  reversed = string.split(' ')
  #In case there is a middle name, i.e. "Nate N. Nasarow", 
  #this will ensure only the family name is shifted to the front.
  reversed = reversed.unshift(reversed.pop)
  reversed[0] = reversed[0].concat(",")
  reversed.join(' ')
end

p swap_names('Nathaniel NMN Nasarow')