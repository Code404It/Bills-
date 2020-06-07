class CreateUserBills < ActiveRecord::Migration[6.0]
  def change
    create_table :user_bills do |t|
      t.string :due_date
    end
  end
end
