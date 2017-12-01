class CreatePreRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :pre_rolls do |t|
      t.string :name
      t.integer :price
      t.integer :thc
      t.text :description
      t.integer :indica_id
      t.integer :sativa_id

      t.timestamps
    end
  end
end
