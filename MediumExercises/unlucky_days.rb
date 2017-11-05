require 'date'

def friday_13th(year)
  d = Date.new(year) 
  puts d.step(Date.new(year, -1, -1)).select{|day| day.friday? && day.mday == 13}.size
end

friday_13th(2015)
friday_13th(1986)
friday_13th(2019)