class CreateSativas < ActiveRecord::Migration[5.1]
  def change
    create_table :sativas do |t|

      t.timestamps
    end
  end
end
