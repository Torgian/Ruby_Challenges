def is_odd?(int)
  p int % 2 == 1
end

is_odd?(7)
is_odd?(8)
is_odd?(-15)
is_odd?(-14)
is_odd?(0)

def is_odd2?(int)
  p int.odd?
end

is_odd2?(-15)
is_odd2?(-14)
is_odd2?(0)