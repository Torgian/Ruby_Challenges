def grading(grade_one, grade_two, grade_three)
  grades = {A: (90..100), B: (80..89), C: (70..79), D: (60..69), F: (0..59) }
  #check mean average of the grades
  average_grade = (grade_one + grade_two + grade_three) / 3
  grades.each {|key, value| return key.to_s if value.cover?(average_grade)}
end

p grading(90, 93, 100)
p grading(23, 88, 47)