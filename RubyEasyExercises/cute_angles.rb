DEGREE = "\xC2\xB0"
QUOTE = "\u201D".encode('utf-8')


def dms(number)
  degrees = number.to_i
  minutes = (number - degrees) * 60
  seconds = (number - degrees - minutes/60) * 3600
  %(#{degrees}#{DEGREE}#{minutes.ceil}'#{seconds.ceil}#{QUOTE})
  #%(#{degrees}#{DEGREE}#{minutes.ceil}'#{seconds.ceil}")
end

puts dms(70.73)
puts dms(324.22)
puts dms(93.034773)
puts dms(254.6)
puts dms(93.034773) == %(93°02'05")