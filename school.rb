students = [["Andres", "Historia", "B", 8], ["Priscila", "Matematicas", "B", 9], ["Andres", "Fisica", "B", 10], ["Juan", "Historia", "A", 7], ["Nacho", "Matematicas", "A", 8], ["Nacho", "Fisica", "A", 9], ["Maria", "Historia", "A", 10], ["Pedro", "Matematicas", "A", 5], ["Maria", "Fisica", "A", 6]]

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

  list.uniq! #eliminates duplicates with unique Enumerator
  student_number = list.count #using count Enumerator
  list = list.sort!.join(", ") #using sort and join Enumerator
  
  puts "There are #{student_number.to_s} students: " + list.to_s
end

def failed_list(students)
  list = []
  x = 0

  students.each do |y| 
    #y.detect {|i| i[3] <=6} 
    #y.detect {|i| i[3] <=6}
    if y[3] <= 6
      puts "Failed students: #{y[0]}, #{y[1]}, #{y[3]}"
    end
  end
  
end



student_list(students)
failed_list(students)