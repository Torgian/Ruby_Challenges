p "What is the bill?"
bill = gets.chomp.to_i
p "What is the tip percentage?"
tip = gets.chomp.to_f * 0.01
tip = bill * tip

p "The total tip for your bill of #{bill.to_s} dollars is #{tip.round(2).to_s} dollars."