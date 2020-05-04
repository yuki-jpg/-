Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
  
 
  get 'home/about'
end