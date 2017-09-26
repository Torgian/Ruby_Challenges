def time_of_day(num)
  #TOD based on the minutes you enter, and subtracted or added to 00:00
  #dependant on whether given number is a negative or not
  minutes = num % 60
  minutes = minutes.to_s << "0" if minutes.to_s[1] == nil
  hours = num / 60
  while hours > 24 || hours < -24
    hours < -24 ? hours = hours + 24 : hours = hours - 24
  end
  hours < 0 ? hours = 24 + hours : hours
  p "#{hours.to_s}:#{minutes}"
end

time_of_day(800)
time_of_day(-2342)
time_of_day(5521)