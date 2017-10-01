def multiply_pairs(arr1, arr2)
  totals = []
  arr1.each do |number|
    arr2.each do |multiplier|
      totals.push(number * multiplier)
    end
  end
  totals.sort
end


p multiply_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
