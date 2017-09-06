def repeat(string, num)
  if num == 1
    p string
  else
    p string
    repeat(string, num-1)
  end
end

repeat("Hello", 3)

def repeat2(string, num)
  while num > 0
    p string
    num -= 1
  end
end

repeat2("My", 3)

def repeat3(string, num)
  unless num == 0
    p string
    repeat3(string, num-1)
  end
end

repeat3("Apprentice", 3)
