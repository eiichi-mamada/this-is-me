Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: "home#index"

  resources :restaurants, only: :index 
  namespace :admin do
    resources :questions, except: :show
  end
  resources :answers, except: :destroy
end

