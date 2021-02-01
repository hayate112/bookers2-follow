Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
  
end