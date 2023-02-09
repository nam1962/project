def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically

  # plus joli, ne pas utiliser pour le moment : students.sort_by(&:upcase)
  students.sort_by do |element|
    element.upcase
  end
end
