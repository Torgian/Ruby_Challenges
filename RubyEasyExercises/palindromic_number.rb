def palindromic_number?(num)
  x = num
  y = []
  while x > 0
    y.push(x%10)
    x = x/10
  end
  y = y.join('').to_i
  p y
  p num == y
end

def palindromic_number2?(num)
  x = num.to_s.split('').reverse.join('')
  p x
end

def palindromic_number3?(num)
  y = num.to_s。split('').reverse.join('')
  
end



palindromic_number3?(34543)# == true
palindromic_number3?(0123210)# == false
palindromic_number3?(22)# == true
palindromic_number3?(5) #== true