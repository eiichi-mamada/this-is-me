Rails.application.routes.draw do
  devise_for  :users, controllers: {registrations: 'users/registrations'}
  root to: "home#index"
  
  resources :restaurants, only: :index 
  namespace :admin do
    resources :questions, except: :show do
      resources :candidates, only: [:new, :create]
    end
  end
    
  resources   :comments,    only:[:new, :create, :show, :edit, :update]
  resources   :answers do
    collection do
      get 'past_new'
      get 'now_new'
      get 'future_new'
      get 'past_index'
      get 'now_index'
      get 'future_index'
    end
  end
end
