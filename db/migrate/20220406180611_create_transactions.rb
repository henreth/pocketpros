class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :card, null: false, foreign_key: true
      t.integer :from_id
      t.integer :to_id
      t.integer :sale_price

      t.timestamps
    end
  end
end
