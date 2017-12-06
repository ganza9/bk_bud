class DropStrainTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :sativas
    drop_table :indicas
  end
end
