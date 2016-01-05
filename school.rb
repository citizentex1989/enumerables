students = [["Andres", "Historia", "B", 8], ["Andres", "Matematicas", "B", 9], ["Andres", "Fisica", "B", 10], ["Nacho", "Historia", "A", 7], ["Nacho", "Matematicas", "A", 8], ["Nacho", "Fisica", "A", 9], ["Maria", "Historia", "A", 10], ["Maria", "Matematicas", "A", 5], ["Maria", "Fisica", "A", 6]]

#Return an array with the list of students
def student_list(students)
  list = []
  x = 0

  #registers every name
  while x < students.length
    students.each do |y| 
    list << y[0]
    end
    x += 1
  end

  list.uniq! #eliminates duplicates
end

student_list(students)