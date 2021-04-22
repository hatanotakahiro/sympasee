Rails.application.routes.draw do
  devise_for :users
  root to: 'movies#index'
  resources :movies do
    resources :reviews do
      resources :review_status
    end
  end
  resources :users do
    resources :user_status
  end
end
