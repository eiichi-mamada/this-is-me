Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  resources :questions, only: [:index, :new, :create, :edit, :update, :delete]
end
