class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :link
      t.string :image, array: true, default: []
      t.string :title, array: true, default: []
      t.timestamps
    end
  end
end
