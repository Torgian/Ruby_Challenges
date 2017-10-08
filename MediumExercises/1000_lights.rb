def lights(switches)
  light_bulbs = Array.new(switches, "off")
  passes = 0
  #first pass, we want to switch every swithc to "on", so touch_switch is 1
  touch_switch = 1 
  while passes < switches
    light_bulbs = turn_switches(touch_switch, light_bulbs)
    passes += 1
    touch_switch += 1
  end
  light_bulbs
end

def turn_switches(touch_switch, light_bulbs)
  i = touch_switch - 1 #subtracted by one due to array indices 
  while i < light_bulbs.length
    light_bulbs[i] = bulb_on?(light_bulbs[i])
    i += touch_switch #increases i by integer in touch switch (first pass = 1, second pass = 2, etc)
  end
  return light_bulbs
end

def bulb_on?(light_bulb)
  light_bulb == "off" ? "on" : "off"
end

p lights(5)
p lights(10)