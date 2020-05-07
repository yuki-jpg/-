Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resource :book_comments, only: [:create, :destroy]
  end
  resources :users,only: [:show,:index,:edit,:update]do
  member do
     get :following, :followers
    end
  end

  resources :relationships, only: [:create, :destroy]
  get 'home/about'
end