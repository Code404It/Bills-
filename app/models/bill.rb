class Bill < ActiveRecord::Base
    has_many :user_bills
    has_many :users, through: :user_bills, dependent: :delete_all

    accepts_nested_attributes_for :user_bills, allow_destroy: true
   

    scope :unpaid, -> { where(paid: true) }
end