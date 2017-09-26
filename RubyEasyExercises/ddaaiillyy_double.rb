def squeezed(sentence)
  array = []
  i = 0
  sentence.split('').each do |letter|
    if array[i-1] != letter
      array.push(letter)
      i += 1
    end
  end
  p array.join('')
end

 squeezed('ddaaiillyy ddoouubbllee')
 squeezed('4444abcabccba') #== '4abcabcba'
 squeezed('ggggggggggggggg')# == 'g'
 squeezed('a')# == 'a'
 squeezed('')# == ''