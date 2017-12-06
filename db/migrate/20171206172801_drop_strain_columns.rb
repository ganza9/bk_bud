class DropStrainColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :edibles, :indica_id
    remove_column :edibles, :sativa_id
    remove_column :flowers, :indica_id
    remove_column :flowers, :sativa_id
    remove_column :others, :indica_id
    remove_column :others, :sativa_id
    remove_column :pre_rolls, :indica_id
    remove_column :pre_rolls, :sativa_id
  end
end
