def fizzbuzz(start, ending)
  (start..ending).each do |number|
    puts check_number(number)
  end
end

def check_number(number)
  if number % 3 == 0 && number % 5 == 0
    return "FizzBuzz"
  elsif number % 3 == 0
    return "Fizz"
  elsif number % 5 == 0
    return "Buzz"
  else
    return number
  end
end

fizzbuzz(1, 15)