class DropBullsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :bulls
  end
end
