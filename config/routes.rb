Rails.application.routes.draw do
  devise_for :users
  root to: 'movies#index'
  resources :movies do
    resources :reviews do
      resources :review_status
    end
  end
  resources :users do
    collection do
      get 'follow', to: 'users#follow'
      get 'follower', to: 'users#follower'
    end
  end
  get 'tags/:tag', to: 'movies#index', as: :tag

  get 'movies/search', to: 'movies#search'
  post 'movies/search', to: 'movies#search'

  resources :relationships, only: [:create, :destroy]
end
