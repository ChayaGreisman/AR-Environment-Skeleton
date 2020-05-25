class CreateToys < ActiveRecord::Migration[5.1]
    def change
        create_table :toys do |t|
            t.string :name
            t.string :kind_of_toy
            t.integer :kid_id
            t.integer :years_owned
        end
    end
end