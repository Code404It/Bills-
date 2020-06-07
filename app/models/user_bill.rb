class UserBill < ActiveRecord::Base
    belongs_to :user 
    belongs_to :bill 
    
  
    validates :due_date, presence: true
   

end