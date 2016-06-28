def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "Hobby?"
  hobby = gets.chomp
  puts "Nationality?"
  nat = gets.chomp
  puts "Height?"
  height = gets.chomp
  while !name.empty? do

    students << {name: name, cohort: :november, hobby: hobby, nat: nat, height: height}
    puts "Now we have #{students.count} students"
    name = gets.chomp
      while !name.empty? do
        puts "Hobby?"
        hobby = gets.chomp
        puts "Nationality?"
        nat = gets.chomp
        puts "Height?"
        height = gets.chomp
      end
  end

  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  @studentcount = students.count
  while @studentcount > 0 do
    students.each_with_index do
    |student, index| puts "#{index + 1}.#{student[:name]} (#{student[:cohort]} cohort) likes #{student[:hobby]} is from #{student[:nat]} and is #{student[:height]}m"
    @studentcount = @studentcount - 1
    end
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
