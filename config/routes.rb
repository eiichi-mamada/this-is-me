Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :restaurants, only: :index 
  namespace :admin do
    resources :questions, except: :show
  end
end

