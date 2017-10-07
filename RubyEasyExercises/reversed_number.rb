def reversed_number(int)
  number = int
  reversed = 0
  while number != 0
    reversed += (number%10)
    reversed *= 10
    number = number / 10
  end
  reversed / 10
end

p reversed_number(25000)
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(1) == 1