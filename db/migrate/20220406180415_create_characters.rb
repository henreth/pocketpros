class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :link
      t.string :image_url
      t.string :image_url2
      t.string :image_url3
      t.string :image_url4
      t.string :title
      t.string :title2
      t.string :title3
      t.string :title4

      t.timestamps
    end
  end
end
