def count_up(integer)
  (1..integer).map {|n| n}
end

def count_up2(integer)
  numbers = []
  (1).upto(integer) {|n| numbers << n}
  numbers
end

p count_up2(5)
p count_up(10)
p count_up(1)