class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :serial_number, null: false
      t.integer :size
      t.string :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :inventories, :serial_number, unique: true
  end
end
