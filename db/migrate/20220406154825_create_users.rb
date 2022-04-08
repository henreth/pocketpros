class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      enable_extension 'hstore'
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.integer :credits
      t.hstore :packs

      t.timestamps
    end
  end
end
