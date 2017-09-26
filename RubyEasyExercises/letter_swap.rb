def swap(sentence)
  swapped_sentence = []
  words = sentence.split(' ')
  x = sentence.split(' ')
  words.each.with_index do |word, i|
    swapped_sentence.push(word)
    swapped_sentence[i][0] = x[i][word.length-1]
    swapped_sentence[i][word.length-1] = x[i][0]
  end
  return swapped_sentence.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
