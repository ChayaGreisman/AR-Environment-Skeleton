class CreatePreschools < ActiveRecord::Migration[5.1]
    def change
        create_table :preschools do |t|
            t.string :name
            t.string :city
        end
    end
end