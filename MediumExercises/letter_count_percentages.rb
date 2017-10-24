UPPER = /[A-Z]/
LOWER = /[a-z]/


def counter(strings)
  totals = {lowercase: 0, uppercase: 0, neither: 0}
  strings.split('').each do |letter|
    case letter
    when UPPER
      totals[:uppercase] += 1
    when LOWER
      totals[:lowercase] += 1
    else
      totals[:neither] += 1
    end
  end
  calculate_percentage(totals)
end

def calculate_percentage(totals)
  total_value = totals.values.reduce(:+)
  totals.each do |key, value|
    totals[key] = ((value/total_value.to_f) * 100)
  end
  return totals
end


puts counter('abCdef 123')
p counter('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p counter('123')
