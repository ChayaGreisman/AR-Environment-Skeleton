class Preschool < ActiveRecord::Base
    has_many :classrooms
    

    # "Bright Horizons" is aquiring all preschools
    def self.change_all_names
        Preschool.all.each do |preschool|
            preschool.update(name: "Bright Horizons")
        end
    end

    def how_many_classes
        self.classrooms.count
    end

    def self.most_classes 
        Preschool.all.max_by do |preschool|
            preschool.how_many_classes
        end 
    end

end