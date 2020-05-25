class Classroom < ActiveRecord::Base
    belongs_to :preschool
    has_many :teachers    
    has_many :kids
    has_many :moms, through: :kids

    def self.biggest_class
        Classroom.all.max_by do |classroom|
            classroom.kids.count
        end
    end

    def self.smallest_class
        Classroom.all.min_by do |classroom|
            classroom.kids.count
        end
    end

    def class_list
        self.kids.map do |kid|
            kid.name
        end
    end

    def class_moms_names
        self.moms.map do |mom|
            mom.name 
        end.uniq
    end

    def these_toys_pass_through_me_at_some_point
        students_toys = []
        self.kids.each do |kid|
            students_toys << kid.toys
        end
        students_toys
    end

    def number_of_teachers
        self.teachers.count
    end

end