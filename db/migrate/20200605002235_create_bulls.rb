class CreateBulls < ActiveRecord::Migration[6.0]
  def change
    create_table :bulls do |t|
      t.string :company_name
      t.decimal :total
      t.boolean :paid, :default => false

      t.timestamps
    end
  end
end
