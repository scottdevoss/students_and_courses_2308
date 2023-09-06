require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Course do
  it 'exists' do
    gradebook = Gradebook.new("Mr. Rogers")
    expect(gradebook).to be_instance_of(Gradebook)
  end

  it 'can add courses' do 
    gradebook = Gradebook.new("Mr. Rogers")
    course1 = Course.new("Calculus", 2)
    gradebook.add_course(course1)
    expect(gradebook.courses.class).to be(Array)
  end

  it 'can list all students' do
    course1 = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course1.enroll(student1)
    course1.enroll(student2)
    gradebook = Gradebook.new("Mr. Rogers")
    gradebook.add_course(course1)
    expect(gradebook.list_all_students.class).to be(Hash)
  end

end 