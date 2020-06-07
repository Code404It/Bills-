class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
  
      change_column :bills,  :total, :float
    
    
  
  end
end
