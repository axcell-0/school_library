class Classroom
    attr_accessor :title, :author, :rentals, :label
  
    def initialize(label)
      @label = label
      @students = []
    end
  
    def add_student(student)
      students << student
      student.classroom = self
    end
  end
  