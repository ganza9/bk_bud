class DropColumnOthers < ActiveRecord::Migration[5.1]
  def change
    remove_column :others, :thc
  end
end
