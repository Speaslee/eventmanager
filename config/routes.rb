Rails.application.routes.draw do
  devise_for :users
  get "/users/:id" => 'users#show'
  resources :events
  resources :addresses
  resources :tickets
  #get "/users/paths/"
  root to: 'events#index'
end
