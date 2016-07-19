class AddColumnToWork < ActiveRecord::Migration
  def change
    add_reference :works, :inventory, index: true, foreign_key: true
  end
end
