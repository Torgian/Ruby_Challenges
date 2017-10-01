def staggered(string)
  i = 0
  #capitalizes the first character and lowers all the others
  string = string.capitalize.chars
  while i < string.length
    change_case(string[i])
    #iterate by two, making every other character capitalized
    i += 2 
  end
  string.join('')
end

def change_case(letter)
  letter.upcase!
end

def check_letter(character)
  character.match(/[a-z]/) ? true : false
end

def staggered2(string)
  string = string.capitalize.split('')
  case_check = true

  string.each do |letter|
    if check_letter(letter)
      if case_check
        case_check = false
      else
        change_case(letter)
        case_check = true
      end
    end
  end
  string.join('')
end





  



# p staggered('I Love Launch School!')
# p staggered('ALL_CAPS') == 'AlL_CaPs'
# p staggered('ignore 77 the 444 numbers')

p staggered2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered2('ALL CAPS') == 'AlL cApS'
p staggered2('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'