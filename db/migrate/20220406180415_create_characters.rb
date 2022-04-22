class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :image_url
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
