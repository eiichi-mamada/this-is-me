Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: "home#index"
  
  namespace :admin do
    resources :questions, except: :show
  end
end

