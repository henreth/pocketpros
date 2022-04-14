class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.integer :rarity
      t.boolean :for_sale
      t.integer :sale_price
      t.string :unique_id

      t.timestamps
    end
  end
end
