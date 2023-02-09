require_relative "wagon_sort"

students = []
# puts "#{felix, cedric, bob}"

puts 'Type a student name'
answer = gets.chomp
students << answer


while answer != ''
  puts 'Type a student name or press enter to finish'
  answer = gets.chomp
  students << answer
end

students.delete('')
# students.delete_at(-1)

number_of_students = students.length


if number_of_students == 1
  puts 'Congratulations! Your Wagon has 1 student:'
  puts students
else

  sorted_list = wagon_sort(students)

  puts "Congratulations! Your Wagon has #{number_of_students} students:"

  sorted_list.each_with_index do |student, index|
    # array[-1]

    if index == number_of_students - 1
      print " and #{student}"
    elsif index == number_of_students - 2
      print student
    else
      print "#{student}, "
    end
  end

end
