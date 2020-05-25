class CreateTeachers < ActiveRecord::Migration[5.1]
    def change
        create_table :teachers do |t|
            t.string :name
            t.integer :years_teaching
            t.integer :classroom_id
        end
    end
end