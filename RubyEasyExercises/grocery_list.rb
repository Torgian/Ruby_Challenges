def buy_stuff(food_array)
  food_items = Array.new()
  food_array.each {|item| item[1].times {food_items.push(item[0])}}
  food_items
end


p buy_stuff([["apples", 3], ["orange", 1], ["bananas", 2]])