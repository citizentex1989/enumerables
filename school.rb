students = [["Andres", "Historia", "B", 8], ["Priscila", "Matematicas", "B", 9], ["Andres", "Fisica", "B", 10], ["Juan", "Historia", "A", 7], ["Nacho", "Matematicas", "A", 8], ["Nacho", "Fisica", "A", 9], ["Maria", "Historia", "A", 10], ["Pedro", "Matematicas", "A", 5], ["Maria", "Fisica", "A", 6]]

# Return an array with the list of students
def student_list(students)
  list = []
  x = 0

  # registers every name
  while x < students.length
    students.each do |y| 
    list << y[0]
    end
    x += 1
  end

  list.uniq! # eliminates duplicates with unique Enumerator
  student_number = list.count # using count Enumerator
  list = list.sort!.join(", ") # using sort and join Enumerator
  
  puts "There are #{student_number.to_s} students: " + list.to_s
end

# Create a list of failed students 
def failed_list(students)
  list = []
  x = 0

  # revises list, isolates failed students
  students.each do |y| 
    if y[3] <= 6
      list << "#{y[0]}, #{y[1]}, #{y[3]}"
    end
  end
  puts "Failed students: " + list.join("; ")
end

# Organize all the students by subject
def subject_students(students, subject)
  subject_members = []
  list = students.group_by{|a,b,c,d| b == subject} #select students according to subject
  students_by_subject = list[true] # select students from the subject
  students_by_subject.each do |y|
    subject_members << y[0]
  end
  subject_members.sort!
  puts "Students in #{subject}: " + subject_members.join(", ")
  subject_members
end

def list_call(students)
  x = 0
  attendance_list = {}
  puts "what subject?"
  subject = gets.chomp
  subject_members = subject_students(students,subject)
  while x < subject_members.length
    puts "is #{subject_members[0]} present? (Y/N)"
    attendace = gets.chomp
    attendance_list[subject_members[0]] = attendace
    subject_members.rotate! #goes through whole list one student at a time
    x += 1
  end
  puts attendance_list.to_s
end

def honor_roll(students)
  list = {}
  x = 0
  students.sort_by!{|a,b,c,d| d} #sort students by grades
  # registers every name
  while x < students.length
    students.each do |y| 
      list[y[0]] = y[3]
    end
    x += 1
  end
  puts "Honor roll:"
  list.each {|k,v| puts k + ": " + v.to_s}
end


#list_call(students)
honor_roll(students)
student_list(students)
failed_list(students)
subject_students(students,"Matematicas")
subject_students(students,"Historia")