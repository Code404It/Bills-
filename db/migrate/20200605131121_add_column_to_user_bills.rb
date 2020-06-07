class AddColumnToUserBills < ActiveRecord::Migration[6.0]
  def change
    add_column :user_bills,  :bill_id, :integer
    add_column :user_bills,  :user_id, :integer
  end
end
