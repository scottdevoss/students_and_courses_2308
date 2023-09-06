require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exists' do
    course = Course.new("Calculus", 2)
    expect(course).to be_instance_of(Course)
  end

  it 'can be full' do
    course = Course.new("Calculus", 2)
    expect(course.full?).to be false
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)
    expect(course.full?).to be true
  end

  it 'can enroll students' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)
    expect(course.students.class).to eq(Array)
    expect(course.students.first.class).to eq(Student)
  end
end
