class Mom < ActiveRecord::Base
    has_many :kids
    has_many :classrooms, through: :kids


    def self.baby_factories
        Mom.all.select do |mom|
            mom.kids.count >= 3
        end
    end

    def self.youngest_mom
        Mom.all.min_by do |mom|
            mom.age
        end
    end

    def num_of_toys_i_need_to_keep_track_of
        no_of_toys = 0
        self.kids.each do |kid|
            no_of_toys += kid.toys.count
        end
    end
    
end