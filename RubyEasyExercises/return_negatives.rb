def negatives_only(integer)
  integer < 0 ? integer : -integer
end

p negatives_only(5)
p negatives_only(-3)
p negatives_only(0)