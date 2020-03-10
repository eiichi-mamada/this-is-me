Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :questions, except: :show
  resources :answers, except: :destroy
end
