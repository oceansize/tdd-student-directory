require 'student'
divider()

describe 'Creating Students' do
  it 'with name, cohort and year' do
    student = {name: 'Rico', cohort: :may, year: 2014}
    expect(create_student('Rico', :may, 2014)).to eq (student)
  end
  it 'it has a list of students which is empty' do
    expect(students_list()).to eq []
  end

  it 'should be able to add students to the list' do
    student = create_student("bob" , :May , 2014)
    student2 = create_student("terry" , :May , 2014)

    add_student_to_array(student)

    expect(students_list.first[:name]).to eq 'bob'
    expect(students_list.count).to eq 1

    add_student_to_array(student2)
    expect(students_list.count).to eq 2
    expect(students_list.last[:name]).to eq 'terry'
  end

  it 'should be able to delete a student from the list' do
    delete_student(candidate)

  end
end
