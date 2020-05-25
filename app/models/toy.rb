class Toy < ActiveRecord::Base
    belongs_to :kid

    def self.time_for_the_trash
        Toy.where("years_owned > ?", 3)
    end

    def self.new_toys
        Toy.where("years_owned <= ?", 1)
    end

    def they_also_play_with_me #returns names of kids in owners class(excluding owner)
        owners_class = self.kid.classroom
        owners_class.kids.map do |kid|
            kid.name
        end.delete(self.kid.name)
    end

end