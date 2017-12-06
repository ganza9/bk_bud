class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :edible_id
      t.integer :flower_id
      t.integer :other_id
      t.integer :pre_roll_id
      t.integer :user_id
      t.string :reviewer
      t.text :review_content

      t.timestamps
    end
  end
end
