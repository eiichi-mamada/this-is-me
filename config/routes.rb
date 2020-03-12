Rails.application.routes.draw do
  devise_for  :users, controllers: {registrations: 'users/registrations'}
  root to: "home#index"

  resources   :restaurants, only: :index
  namespace   :admin do
    resources :questions, except: :show
  end
  resources   :answers,   only:  [:index, :create, :show, :edit, :update]
  resources   :answers do
    collection do
      get 'past_new'
      get 'now_new'
      get 'future_new'
    end
  end
end
