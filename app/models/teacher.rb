class Teacher < ActiveRecord::Base
    belongs_to :classroom
    
    def self.experienced_teachers
        Teacher.where("years_teaching > ?", 3)
    end


    def self.diaper_changers
        Teacher.all.select do |teacher|
            teacher.classroom.age < 3
        end
    end
    
    def me_and_my_co_teacher
        Teacher.where("classroom = ?", self.classroom)
    end

    def number_of_students
        self.classroom.kids.count
    end

    def students_names
        self.classroom.class_list
    end

    def put_em_down_for_nap_time
        students_names.each do |name|
            puts "#{name} is napping on his/her cot."
        end
    end