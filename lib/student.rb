def divider
  dashes = "-"
  puts dashes.center(65,'-')
end

def create_student(name,cohort,year)
  {name: name, cohort: cohort, year: year}
end

def students_list
  # if @current_students_list
  #   @current_students_list
  # else
  #   @current_students_list = []
  # end
  # more elegant syntax below:
  @current_students_list ||= []
end

def add_student_to_array(new_student)
  students_list << new_student
end