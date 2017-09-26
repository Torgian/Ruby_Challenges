def combine(arr1, arr2)
  arr2.each do |item|
    arr1.delete(item)
  end
  captain_planet = arr1.concat(arr2)
  "With our powers combined, we are...#{captain_planet}!"
end

def combine2(arr1, arr2)
  combined = arr1.concat(arr2)
  combined.uniq!
end

p combine2([1, 3, 5], [3, 6, 9])