Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks:'omniauth'}
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bills

  resources :user_bills do
    resources :bills, only: [:index, :new, :edit]
  end
 
  root to: "application#home"

  
end
