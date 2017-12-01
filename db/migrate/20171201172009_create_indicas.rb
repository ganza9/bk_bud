class CreateIndicas < ActiveRecord::Migration[5.1]
  def change
    create_table :indicas do |t|

      t.timestamps
    end
  end
end
