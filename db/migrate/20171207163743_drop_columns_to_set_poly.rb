class DropColumnsToSetPoly < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :edible_id
    remove_column :reviews, :flower_id
    remove_column :reviews, :other_id
    remove_column :reviews, :pre_roll_id
    remove_column :reviews, :user_id 
  end
end
