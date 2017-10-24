def block_word?(string)

  blocks = ["B","O"],["X","K"],["D","Q"],["C","P"],["N","A"],["G","T"],["R","E"],["F","S"],["J","W"],["H","U"],["V","I"],["L","Y"],["Z","M"]
  
  (0...string.length).each do |i|
    letter = string[i].upcase
    if !blocks.delete(has_letter?(blocks, letter))
      return false
    end 
  end
  return true
end

def has_letter?(blocks, letter)
  return blocks.assoc(letter) if blocks.assoc(letter)
  return blocks.rassoc(letter) if blocks.rassoc(letter)
end

p block_word?("BUTCH")
p block_word?("BATCH")
p block_word?("jest")