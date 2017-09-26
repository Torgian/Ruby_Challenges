def running_total(arr)
  replaced = [arr[0]]

  arr.each.with_index do |x,i|
    replaced.push(replaced[i] + arr[i+1]) unless arr[i+1] == nil
  end

  replaced
end

p running_total([14, 11, 7, 15, 20])

def running_total2(arr, i = 0, array = [])
  if i == arr.length-1
    return arr
  else
    running_total2(arr, i+=1, arr[i] = arr[i] + arr[i-1])
  end
end



p running_total2([1,2,3,4,5])
p running_total2([3])

