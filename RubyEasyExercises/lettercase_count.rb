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
  puts totals
end

counter('abCdef 123')
counter('AbCd +Ef')
counter('123')
counter('')