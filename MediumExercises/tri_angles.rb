def tri_angles(one,two,three)
  angles = [one,two,three]
  return "invalid!" if angles.reduce(:+) != 180 || angles.include?(0)
  if angles.include?(90)
    return :right
  elsif is_acute?(angles)
    return :acute
  else
    return :obtuse
  end
end

def is_acute?(angles)
  counter = 0
  angles.each do |angle|
    if angle < 90
      counter += 1
    else
      return false
    end
  end
  return true
end


p tri_angles(40,60,80)
