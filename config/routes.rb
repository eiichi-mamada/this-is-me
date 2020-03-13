Rails.application.routes.draw do
  devise_for  :users, controllers: {registrations: 'users/registrations'}
  root to: "home#index"

  resources   :comments,    only:[:new, :create, :show, :edit, :update]
  resources   :answers,     only:[:index, :create, :edit, :update]
  resources   :answers do
    collection do
      get 'past_new'
      get 'now_new'
      get 'future_new'
    end
  end
  namespace   :admin do
    resources :questions, except: :show
  end
end
