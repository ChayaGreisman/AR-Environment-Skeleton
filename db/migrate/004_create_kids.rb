class CreateKids < ActiveRecord::Migration[5.1]
    def change
        create_table :kids do |t|
            t.string :name
            t.integer :age
            t.integer :mom_id
            t.integer :classroom_id
        end
    end
end