def greetings(names, profile)
  string = "Welcome, "
  names.each_with_index do |name, i|
    i < names.length-1 ? string << name + " " : string << name + ". "
  end
  string << "It's good to have a #{profile[:title]} #{profile[:occupation]} on the team!"
  string
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })