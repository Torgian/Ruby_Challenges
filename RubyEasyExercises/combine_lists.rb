def combine_lists(arr1, arr2)
  combined = []
  i = 0
  while i < arr1.length
    combined.push(arr1[i], arr2[i])
    i += 1
  end
  combined
end

print combine_lists([1, 2, 3], ['a', 'b', 'c'])