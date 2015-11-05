Rails.application.routes.draw do
  devise_for :users
  get "/users/:id" => 'users#show'
  resources :events
  resources :addresses
  resources :tickets
  get :search, controller: "events", action: "search"
  root to: 'events#index'
end
