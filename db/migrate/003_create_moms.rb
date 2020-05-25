class CreateMoms < ActiveRecord::Migration[5.1]
    def change
        create_table :moms do |t|
            t.string :name
            t.integer :age
        end
    end
end