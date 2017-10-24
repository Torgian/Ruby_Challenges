def balanced?(string)
  regex = /[\(\)]/
  count = {"(": 0, ")": 0}
  return false if string.match(regex).to_s == ")"
  string = string.scan(regex)
  string.each do |i|
    #if amount of "(" is equal to ")" and i is a closing parenthesis, return false
    if count[:"("] == count[:")"] && i == ")"
      return false
    end
    count[:"#{i}"] += 1
  end
  return count[:"("] == count[:")"]
end

p balanced?('What (is) this?')# == true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?')# == true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!')# == true
p balanced?(')Hey!(')# == false
p balanced?('What ((is))) up(')# == false