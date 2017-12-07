class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :review_content
      t.integer :reviewable_id
      t.string :reviewable_type
      t.timestamps
    end

    add_index :reviews, [:reviewable_type, :reviewable_id]
  end
end
