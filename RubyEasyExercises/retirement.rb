p "What is your age?"
age = gets.chomp.to_i
p "What age do you want to retire?"
retire = gets.chomp.to_i
retire = retire - age

p "It's currently #{Time.new.year}."
p "You will retire in #{Time.new.year + retire}!"
p "You have only #{retire.to_s} years to go!"