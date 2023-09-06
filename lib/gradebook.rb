class Gradebook
  attr_reader :instructor, :courses
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    student_list = {}
    @courses.each do |course|
      student_list[course] = course.students
    end
    student_list
  end

  def students_below(threshold)
    below_threshold = []
    @students.find_all do |student|
      if student.scores < threshold 
        below_threshold << student
      end
    end
  end
end