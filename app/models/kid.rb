class Kid < ActiveRecord::Base
    has_many :toys
    belongs_to :classroom
    belongs_to :mom

    def self.kids_by_alphabetical_order
        Kid.order(:name)
    end

    def self.most_spoiled_kid
        Kid.all.max_by do |kid|
            kid.toys.count
        end
    end

    def me_and_my_siblings
        Kid.all.select do |kid|
            kid.mom == self.mom
        end   
    end

    def my_teachers
        my_teachers = self.classroom.teachers
        my_teachers
    end

    def i_will_keep_repeating_my_name_and_age
        10.times do puts "Hey teacher! My name is #{self.name} and I am going to turn #{self.age + 1}!"
        end
    end


end