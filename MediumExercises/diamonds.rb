def diamond(size)
  pass = 0
  midpoint = size/2
  while pass < size
    if pass < midpoint
      puts String.new(" "*(midpoint-pass) << "*"*(pass+1)) << "*"*pass
    else
      puts String.new(" "*(midpoint-(size-pass-1)) << "*" * (size-pass)) << "*" * (size-pass-1)
    end
    pass += 1
  end
end

diamond(3)