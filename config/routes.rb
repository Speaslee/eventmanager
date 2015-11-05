Rails.application.routes.draw do
  devise_for :users
  get "/users/profile/:id" => 'users#profile'
  resources :events
  resources :addresses
  resources :tickets
  
  root to: 'events#index'
end
