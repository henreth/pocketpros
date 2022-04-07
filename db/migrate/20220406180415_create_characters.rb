class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.integer :birth_year

      t.timestamps
    end
  end
end
