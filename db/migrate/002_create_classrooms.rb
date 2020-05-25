class CreateClassrooms < ActiveRecord::Migration[5.1]
    def change
        create_table :classrooms do |t|
            t.string :name
            t.integer :age
            t.integer :preschool_id
        end
    end
end