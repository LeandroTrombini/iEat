Rails.application.routes.draw do
  resources :orders, only: [:create]
  resources :restaurants
  resources :products
  devise_for :users
  root to: "home#index"
end
