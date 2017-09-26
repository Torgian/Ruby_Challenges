def after_midnight(time)
  minutes = convert_time(time)
  minutes = 0 if minutes == 1440
  0 + minutes
end

def convert_time(time)
  separate_time = time.split(':')
  if separate_time[0] == '24'
    return 0
  else
    minutes = separate_time[0].to_i * 60 + separate_time[1].to_i
    return minutes
  end 
end

def before_midnight(time)
  minutes = convert_time(time)
  minutes = 1440 if minutes == 0
  1440 - minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:23') == 1417
p after_midnight('12:34') == 754
 p before_midnight('12:34') == 686
 p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

