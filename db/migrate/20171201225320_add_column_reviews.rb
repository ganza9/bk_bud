class AddColumnReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
  end

  add_index :reviews, [:reviewable_type, :reviewable_id]
end
