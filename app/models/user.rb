class User < ApplicationRecord
    has_many :user_bills
    has_many :bills, through: :user_bills
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers:[:google_oauth2]
         
    def self.create_from_provider_data(provider_data)
       where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
       user.email = provider_data.info.email
       user.password = Devise.friendly_token[0,20]
    end
  end
end
